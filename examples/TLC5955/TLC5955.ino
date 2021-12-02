/*
   TLC5955 Control Library
   Used to control the TI TLC5955 LED driver chip
   Zack Phillips - zkphil@berkeley.edu
   Product Page: http://www.ti.com/product/tlc5955
   Copyright (c) 2018, Zachary F. Phillips
   All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:
   Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
   Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
   Neither the name of the <organization> nor the
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

#include "TLC5955.h"
#include "SPI.h"

// Pin set-up
#define GSCLK 6
#define LAT 2
#define SPI_MOSI 11
#define SPI_CLK 13

const uint8_t TLC5955::chip_count = 1;          // Change to reflect number of TLC chips
float TLC5955::max_current_amps = 10;      // Maximum current output, amps
bool TLC5955::enforce_max_current = false;   // Whether to enforce max current limit

// Define dot correction, pin rgb order, and grayscale data arrays in program memory
uint8_t TLC5955::_dc_data[TLC5955::chip_count][TLC5955::LEDS_PER_CHIP][TLC5955::COLOR_CHANNEL_COUNT];
uint8_t TLC5955::_rgb_order[TLC5955::chip_count][TLC5955::LEDS_PER_CHIP][TLC5955::COLOR_CHANNEL_COUNT];
uint16_t TLC5955::_grayscale_data[TLC5955::chip_count][TLC5955::LEDS_PER_CHIP][TLC5955::COLOR_CHANNEL_COUNT];

// Create TLC5955 object
TLC5955 tlc;

void setup() {
  // Set pins (non-serial) to output mode
  pinMode(GSCLK, OUTPUT);
  pinMode(LAT, OUTPUT);

  // Adjust PWM timer for maximum GSCLK frequency
  analogWrite(GSCLK, 127);

  // The library does not ininiate SPI for you, so as to prevent issues with other SPI libraries
  SPI.begin();

  tlc.init(LAT, SPI_MOSI, SPI_CLK);

  // We must set dot correction values, so set them all to the brightest adjustment
  tlc.set_all_dc_data(127);

  // Set Max Current Values (see TLC5955 datasheet)
  tlc.set_max_current(3, 3, 3); // Go up to 7

  // Set Function Control Data Latch values. See the TLC5955 Datasheet for the purpose of this latch.
  // Order: DSPRPT, TMGRST, RFRESH, ESPWM, LSDVLT
  tlc.set_function_data(true, true, true, true, true);

  // set all brightness levels to max (127)
  int currentR = 127;
  int currentB = 127;
  int currentG = 127;
  tlc.set_brightness_current(currentR, currentB, currentG);

  // Update Control Register
  tlc.update_control();

  // Provide LED pin order (R,G,B)
  tlc.set_rgb_pin_order(0, 1, 2);
}

void loop() {

}
