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

SPISettings mSettings(SPI_BAUD_RATE, MSBFIRST, SPI_MODE0);

void TLC5955::init(uint8_t gslat, uint8_t spi_mosi, uint8_t spi_clk) {
	_gslat = gslat;
	_spi_clk = spi_clk;
	_spi_mosi = spi_mosi;
	_bufferCount = 7;
	pinMode(_gslat, OUTPUT);
	digitalWrite(_gslat, LOW);
}

void TLC5955::printByte(byte myByte){
 for(byte mask = 0x80; mask; mask >>= 1){
   if(mask  & myByte)
       Serial.print('1');
   else
       Serial.print('0');
 }
}

void TLC5955::setAllLed(uint16_t gsvalue) {
	for(int8_t chip = TLC_COUNT-1; chip>=0; chip--) {
		for(int8_t a = 0; a < LEDS_PER_CHIP; a++) {
			for(int8_t b = 0; b < COLOR_CHANNEL_COUNT; b++) {
				_gsData[chip][a][b] = gsvalue;
			}
		}
	}
}

void TLC5955::setAllLed(uint16_t red, uint16_t green, uint16_t blue) {
	for(int8_t chip = TLC_COUNT-1; chip>=0; chip--) {
		for(int8_t channel = 0; channel < LEDS_PER_CHIP; channel++) {
			_gsData[chip][channel][2] = blue;
			_gsData[chip][channel][1] = green;
			_gsData[chip][channel][0] = red;
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
	// Make sure latch is low
  digitalWrite(_gslat,LOW);

	// Turn off SPI Temporarily
	SPI.end();

	// Enable digital IO
	pinMode(_spi_mosi,OUTPUT);
	pinMode(_spi_clk,OUTPUT);

	// Manually write control sequence
	if (isControlMode){
	  // Manually Write control sequence
	  digitalWrite(_spi_mosi,HIGH); // Set MSB to HIGH
		digitalWrite(_spi_clk,LOW); // Clock Pulse
		digitalWrite(_spi_clk,HIGH);
		digitalWrite(_spi_clk,LOW);
		shiftOut(_spi_mosi,_spi_clk,MSBFIRST,B10010110); // see datasheet HLLHLHHL
		if (SERIAL_DEBUG){
			Serial.print('1');
			printByte(B10010110);
		}
	}else{

		if (SERIAL_DEBUG)
			Serial.print('0');

		digitalWrite(_spi_mosi,LOW); // Set MSB to LOW
		digitalWrite(_spi_clk,LOW); // Clock Pulse
		digitalWrite(_spi_clk,HIGH);
		digitalWrite(_spi_clk,LOW);
	}
	SPI.begin();
}

void TLC5955::updateLeds() {

 if(SERIAL_DEBUG){
	 Serial.println(F("Begin LED Update String (All Chips)..."));
	 Serial.println(' ');
 }

 for(int8_t chip = TLC_COUNT-1; chip>=0; chip--)
 {
	 setControlModeBit(CONTROL_MODE_OFF);
	 SPI.beginTransaction(mSettings);
		for(int8_t a = LEDS_PER_CHIP-1; a >= 0; a--) { // We have 8 LED's. Start at the last since thats how we clock data out
			for(int8_t b = COLOR_CHANNEL_COUNT-1; b >= 0; b--) { // Each with 3 colors
					SPI.transfer((char)(_gsData[chip][a][b] >> 8));  // Output the MSB first
					SPI.transfer((char)(_gsData[chip][a][b] & 0xFF)); // Followed by the LSB

					if(SERIAL_DEBUG){
						printByte((char)(_gsData[chip][a][b] >> 8));
						printByte((char)(_gsData[chip][a][b] & 0xFF));
					}
			}
		}
	 SPI.endTransaction();
 }
if(SERIAL_DEBUG){
  Serial.println(' ');
	Serial.println(F("End LED Update String (All Chips)"));
}
latch();
}

void TLC5955::setLed(uint16_t ledNum, uint16_t red, uint16_t green, uint16_t blue) {
	uint8_t chip = (uint16_t)floor(ledNum/16);
  uint8_t channel =  (uint8_t)(ledNum-16*chip); //Turn that LED on
	_gsData[chip][channel][2] = blue;
	_gsData[chip][channel][1] = green;
	_gsData[chip][channel][0] = red;
}

void TLC5955::setLed(uint16_t ledNum, uint16_t rgb) {
	uint8_t chip = (uint16_t)floor(ledNum/16);
  uint8_t channel =  (uint8_t)(ledNum-16*chip); //Turn that LED on
	_gsData[chip][channel][2] = rgb;
	_gsData[chip][channel][1] = rgb;
	_gsData[chip][channel][0] = rgb;
}

void TLC5955::setMaxCurrent(uint8_t MCR, uint8_t MCG, uint8_t MCB) {
    // Ensure max Current agrees with datasheet (3-bit)
		if (MCR > 7)
			 MCR = 7;
		_MCR = MCR;

    // Ensure max Current agrees with datasheet (3-bit)
		if (MCG > 7)
		 	 MCG = 7;
		_MCG = MCG;

    // Ensure max Current agrees with datasheet (3-bit)
    if (MCB > 7)
			 MCB = 7;
		_MCB = MCB;
}

void TLC5955::setMaxCurrent(uint8_t MCRGB) {
    // Ensure max Current agrees with datasheet (3-bit)
	if (MCRGB > 7)
		MCRGB = 7;
	_MCR = MCRGB;
	_MCG = MCRGB;
	_MCB = MCRGB;
}

// Defines functional bits in settings - see datasheet for what
void TLC5955::setFunctionData(bool DSPRPT, bool TMGRST, bool RFRESH, bool ESPWM, bool LSDVLT) {
    uint8_t data = 0;
	data |= DSPRPT << 0;
	data |= TMGRST << 1;
	data |= RFRESH << 2;
	data |= ESPWM << 3;
	data |= LSDVLT << 4;
	Serial.println(data);
	_functionData = data;
}

// Set Brightness through CURRENT from 10-100% of value set in function mode
void TLC5955::setBrightnessCurrent(uint8_t rgb) {
	_brightRed = rgb;
	_brightGreen = rgb;
	_brightBlue = rgb;
}

// Set Brightness through CURRENT from 10-100% of value set in function mode
void TLC5955::setBrightnessCurrent(uint8_t red, uint8_t green, uint8_t blue) {
	_brightRed = red;
	_brightGreen = green;
	_brightBlue = blue;
}

// Sets all dot correction data to the same value (default should be 255
void TLC5955::setAllDcData(uint8_t dcvalue) {
	for(int8_t chip = TLC_COUNT-1; chip>=0; chip--) {
		for(int8_t a = LEDS_PER_CHIP-1; a>=0; a--) {
			for(int8_t b = COLOR_CHANNEL_COUNT-1; b>=0; b--) {
				_dcData[chip][a][b] = dcvalue;
			}
		}
	}
}

void TLC5955::setLedDc(uint16_t ledNum, uint8_t dcR, uint8_t dcG, uint8_t dcB)
{
	uint8_t chip = (uint16_t)floor(ledNum/16);
	uint8_t channel =  (uint8_t)(ledNum-16*chip); //Turn that LED on
	_dcData[chip][channel][2] = dcB;
	_dcData[chip][channel][1] = dcG;
	_dcData[chip][channel][0] = dcR;
}

// Update the Control Register (changes settings)
void TLC5955::updateControl() {
	//flushBuffer();
  for(int8_t chip = TLC_COUNT-1; chip>=0; chip--) {

		if (SERIAL_DEBUG)
			Serial.println("Starting Control Mode...");

		_bufferCount = 7;
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
		for(int8_t a = LEDS_PER_CHIP-1; a >= 0; a--) {
			for(int8_t b = COLOR_CHANNEL_COUNT-1; b >= 0; b--) {
				for(int8_t c = 6; c >= 0; c--) {
					setBuffer(_dcData[chip][a][b] & (1<<c));
				}
			}
		}

		if (SERIAL_DEBUG)
			Serial.println(' ');
	}
	latch();
}

void TLC5955::latch()
{
	digitalWrite(_gslat, LOW);
	digitalWrite(_gslat, HIGH);
	delayMicroseconds(LATCH_DELAY);
	digitalWrite(_gslat, LOW);
}

// SPI interface - accumulates single bits, then sends over SPI
// interface once we accumulate 8 bits
void TLC5955::setBuffer(uint8_t bit){
	bitWrite(_buffer, _bufferCount, bit);
	_bufferCount--;
    SPI.beginTransaction(mSettings);
	if(_bufferCount == -1)
	{
		if (SERIAL_DEBUG)
			printByte(_buffer);

		SPI.transfer(_buffer);
		_bufferCount = 7;
		_buffer = 0;
	}
	SPI.endTransaction();
}
