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

#ifndef TLC5955_h
#define TLC5955_h

#include <Arduino.h>
#include <SPI.h>

#define LEDS_PER_CHIP 16
#define COLOR_CHANNEL_COUNT 3
#define TLC_COUNT 6

// Bit Quantities (Change to match other TLC driver chips)
#define GS_BITS 16
#define SPI_MOSI 51 // 51 on mega, 22 on teensy2.0++
#define SPI_CLK 52 // 52 on mega, 21 on teensy2.0++
#define GB_BITS 7
#define MC_BITS 3
#define FC_BITS 5
#define DC_BITS 7
#define CONTROL_ZERO_BITS 389 // Bits required for correct control reg size
#define TOTAL_REGISTER_SIZE 76

#define LATCH_DELAY 10
#define CONTROL_MODE_ON 1
#define CONTROL_MODE_OFF 0

#define SPI_BAUD_RATE 20000000

#define SERIAL_DEBUG 1

class TLC5955
{
	public:
		void init(uint8_t gslat);
		void init(uint8_t gslat, uint16_t grayscale);
		void setControlModeBit(bool isControlMode);
		void setAllLED(uint16_t gsvalue);
		void updateLEDs();
		void setLED(uint16_t ledNum, uint16_t red, uint16_t green, uint16_t blue);
		void setFunctionData(uint8_t data);
		void setBrightnessCurrent(uint8_t global);
		void setBrightnessCurrent(uint8_t red, uint8_t green, uint8_t blue);
		void setAllDCData(uint8_t dcvalue);
		void updateControl();
		void setBuffer(uint8_t bit);
		void setMaxCurrent(uint8_t MCR, uint8_t MCG, uint8_t MCB);
		void setFunctionData(bool DSPRPT, bool TMGRST, bool RFRESH, bool ESPWM, bool LSDVLT);
    void flushBuffer();
		void latch();
		void printByte(byte myByte);

	private:
		uint8_t _gslat;
		uint8_t _functionData;
		uint16_t _brightRed;
		uint16_t _brightGreen;
		uint16_t _brightBlue;
		uint8_t _dcData[TLC_COUNT][LEDS_PER_CHIP][COLOR_CHANNEL_COUNT];
		uint8_t _MCR;
		uint8_t _MCG;
		uint8_t _MCB;

		// [N TLC Chips][0-15 LED][0-2 RGB]
		uint16_t _gsData[TLC_COUNT][LEDS_PER_CHIP][COLOR_CHANNEL_COUNT];

		// SPI
		uint8_t _buffer;
		int8_t _bufferCount;
};

#endif
