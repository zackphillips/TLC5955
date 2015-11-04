/*
TLC5955 Control Library
Used to control the TI TLC5955 LED driver chip
Zack Phillips - zkphil@berkeley.edu
Product Page: http://www.ti.com/product/tlc5955

Copyright (c) 2015, Zachary F. Phillips
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the <organization> nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Z. PHILLIPS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <TLC5955.h>

SPISettings mSettings(SPI_BAUD_RATE, MSBFIRST, SPI_MODE1);

void TLC5955::init(uint8_t gslat) {
	_gslat = gslat;

	_bufferCount = 0;

	pinMode(_gslat, OUTPUT);

	digitalWrite(_gslat, LOW);
}

void TLC5955::init(uint8_t gslat, uint16_t grayscale) {
	_gslat = gslat;

	_bufferCount = 0;

	pinMode(_gslat, OUTPUT);
	digitalWrite(_gslat, LOW);

	setAllLED(grayscale);
}

void TLC5955::setAllLED(uint16_t gsvalue) {
	for(int8_t chip = TLC_COUNT-1; chip>=0; chip--) {
		for(int8_t a = 0; a < LED_COUNT; a++) {
			for(int8_t b = 0; b < COLOR_CHANNEL_COUNT; b++) {
				_gsData[chip][a][b] = gsvalue;
			}
		}
	}
}

void TLC5955::flushBuffer()
{
	setControlModeBit(CONTROL_MODE_OFF);
  SPI.beginTransaction(mSettings);
  for (int16_t fCount=0; fCount < TLC_COUNT*TOTAL_REGISTER_SIZE/8; fCount++)
 	 SPI.transfer(0);
  SPI.endTransaction();
}

void TLC5955::setControlModeBit(bool isControlMode)
{
  digitalWrite(_gslat,LOW);
	// Turn off SPI Temporarily
	SPI.end();

	// Enable digital IO
	pinMode(SPI_MOSI,OUTPUT);
	pinMode(SPI_CLK,OUTPUT);

	// Manually write control sequence
	if (isControlMode){
	  // Manually Write control sequence
	  digitalWrite(SPI_MOSI,HIGH); // Set MSB to HIGH
		digitalWrite(SPI_CLK,LOW); // Clock Pulse
		digitalWrite(SPI_CLK,HIGH);
		digitalWrite(SPI_CLK,LOW);
		shiftOut(SPI_MOSI,SPI_CLK,MSBFIRST,B10010110); // see datasheet HLLHLHHL
	}else{
		digitalWrite(SPI_MOSI,LOW); // Set MSB to LOW
		digitalWrite(SPI_CLK,LOW); // Clock Pulse
		digitalWrite(SPI_CLK,HIGH);
		digitalWrite(SPI_CLK,LOW);
	}
	SPI.begin();
}

void TLC5955::updateLEDs() {
	_bufferCount = 0;
 flushBuffer();
 latch();
 for(int8_t chip = TLC_COUNT-1; chip>=0; chip--)
 {
	 setControlModeBit(CONTROL_MODE_ON);
	 SPI.beginTransaction(mSettings);
		for(int8_t a = LED_COUNT-1; a >= 0; a--) { // We have 8 LED's. Start at the last since thats how we clock data out
			for(int8_t b = COLOR_CHANNEL_COUNT-1; b >= 0; b--) { // Each with 3 colors
					SPI.transfer(_gsData[chip][a][b] >> 8);  // Output the MSB first
					SPI.transfer(_gsData[chip][a][b] & 0xFF); // Followed by the LSB
			}
		}
	 SPI.endTransaction();
 }
latch();
}

void TLC5955::setLED(uint16_t ledNum, uint16_t red, uint16_t green, uint16_t blue) {
	uint8_t chip = (uint16_t)floor(ledNum/16);
  uint8_t channel =  (uint8_t)(ledNum-16*chip); //Turn that LED on
	_gsData[chip][channel][2] = blue;
	_gsData[chip][channel][1] = green;
	_gsData[chip][channel][0] = red;
}

void TLC5955::setMaxCurrent(uint8_t MCR, uint8_t MCG, uint8_t MCB) {
    // Ensure max Current agrees with datasheet (3-bit)
	if (MCR > 7)
		MCR = 7;
    else
		_MCR = MCR;

    // Ensure max Current agrees with datasheet (3-bit)
	if (MCG > 7)
		MCG = 7;
    else
		_MCG = MCG;

    // Ensure max Current agrees with datasheet (3-bit)
    if (MCB > 7)
		MCB = 7;
    else
		_MCB = MCB;
}

// Defines functional bits in settings - see datasheet for what
void TLC5955::setFunctionData(bool DSPRPT, bool TMGRST, bool RFRESH, bool ESPWM, bool LSDVLT) {
    uint8_t data = 0;
	data |= DSPRPT << 1;
	data |= TMGRST << 2;
	data |= RFRESH << 3;
	data |= ESPWM << 4;
	data |= LSDVLT << 4;
	_functionData = data;
}

// Set Brightness through CURRENT from 10-100% of value set in function mode
void TLC5955::setBrightnessCurrent(uint8_t global) {
	_brightRed = global;
	_brightGreen = global;
	_brightBlue = global;
}

// Set Brightness through CURRENT from 10-100% of value set in function mode
void TLC5955::setBrightnessCurrent(uint8_t red, uint8_t green, uint8_t blue) {
	_brightRed = red;
	_brightGreen = green;
	_brightBlue = blue;
}

// Sets all dot correction data to the same value (default should be 255
void TLC5955::setAllDCData(uint8_t dcvalue) {
	for(int8_t chip = TLC_COUNT-1; chip>=0; chip--) {
		for(int8_t a = LED_COUNT-1; a>=0; a--) {
			for(int8_t b = COLOR_CHANNEL_COUNT-1; b>=0; b--) {
				_dcData[chip][a][b] = dcvalue;
			}
		}
	}
}

// Update the Control Register (changes settings)
void TLC5955::updateControl() {
	flushBuffer();
  for(int8_t chip = TLC_COUNT-1; chip>=0; chip--) {
		_bufferCount = 0;
		setControlModeBit(CONTROL_MODE_ON);

		// Add CONTROL_ZERO_BITS blank bits to get to correct position for DC/FC
		for(int16_t a = 0; a < CONTROL_ZERO_BITS; a++) {
			setBuffer(0);
		}
		// 5-bit Function Data
		for(int8_t a = FC_BITS-1; a >= 0; a--) {
			setBuffer((_functionData & (1<<a)));
		}
		// Blue Brightness
		for(int8_t a = GB_BITS-1; a >= 0; a--) {
			setBuffer((_brightBlue & (1<<a)));
		}
		// Green Brightness
		for(int8_t a = GB_BITS-1; a >= 0; a--) {
			setBuffer((_brightGreen & (1<<a)));
		}
		// Red Brightness
		for(int8_t a = GB_BITS-1; a >= 0; a--) {
			setBuffer((_brightRed & (1<<a)));
		}
		// Maximum Current Data
		for(int8_t a = MC_BITS-1; a >= 0; a--) {
			setBuffer((_MCB & (1<<a)));
		}
		for(int8_t a = MC_BITS-1; a >= 0; a--) {
			setBuffer((_MCG & (1<<a)));
		}
		for(int8_t a = MC_BITS-1; a >= 0; a--) {
			setBuffer((_MCR & (1<<a)));
		}
		// Dot Correction data
		for(int8_t a = LED_COUNT-1; a >= 0; a--) {
			for(int8_t b = COLOR_CHANNEL_COUNT-1; b >= 0; b--) {
				for(int8_t c = 6; c >= 0; c--) {
					setBuffer(_dcData[chip][a][b] & (1<<c));
				}
			}
		}
	}
	latch();
}

void TLC5955::latch()
{
	digitalWrite(_gslat, LOW);
	delayMicroseconds(LATCH_DELAY);
	digitalWrite(_gslat, HIGH);
	digitalWrite(_gslat, LOW);
}

// SPI interface - accumulates single bits, then sends over SPI
// interface once we accumulate 8 bits
void TLC5955::setBuffer(uint8_t bit){
	bitWrite(_buffer, _bufferCount, bit);
	_bufferCount++;
    SPI.beginTransaction(mSettings);
	if(_bufferCount == 8)
	{
		SPI.transfer(_buffer);
		_bufferCount = 0;
		_buffer = 0;
	}
	SPI.endTransaction();
}
