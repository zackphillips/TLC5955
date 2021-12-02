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
 * Neither the name of Zack Phillips / UC Berkeley nor the
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

#ifndef TLC5955_H
#define TLC5955_H

#include <SPI.h>
#include <Arduino.h>

/* Bit Quantities (Change to match other TLC driver chips) */
#define GS_BITS 16
#define GB_BITS 7
#define MC_BITS 3
#define FC_BITS 5
#define DC_BITS 7
#define CONTROL_ZERO_BITS 389   /* Bits required for correct control reg size */
#define TOTAL_REGISTER_SIZE 76
#define LATCH_DELAY 1
#define CONTROL_WRITE_COUNT 2
#define CONTROL_MODE_ON 1
#define CONTROL_MODE_OFF 0

// Serial baud rate
#define SPI_BAUD_RATE 1500000
#define GS_FREQUENCY 2500000

// LED Current OUTPUT
static const float LED_CURRENT_AMPS = 0.020;

// Line ending for serial output
static const char LINE_ENDING[] = "\n";

class TLC5955
{
public:

/* Initialization */
void init(uint8_t gslat, uint8_t spi_mosi, uint8_t spi_clk, uint8_t gsclk);
void deallocate();

/* Setting individual LED intensities */
void set_all(uint16_t gsvalue);
void set_all_rgb(int16_t red, uint16_t green, uint16_t blue);
void set_single(int16_t led_number, uint16_t rgb);
void set_single_rgb(int16_t led_number, uint16_t color_channel_index, uint16_t value);
uint16_t get_rgb(int16_t channel_number, int color_channel_index);

/* Set/get individual pin values (no RGB) */
void set_single_channel(uint16_t channel_number, uint16_t value);
uint16_t get_single_channel(uint16_t channel_number);

/* Control Mode Parameters */
void set_brightness_current(uint8_t global);
void set_brightness_current(uint8_t red, uint8_t green, uint8_t blue);
void set_all_dc_data(uint8_t dcvalue);
void set_led_dc(int16_t led_number, uint8_t color_channel_index, uint8_t dc_value);
void set_max_current(uint8_t MCR, uint8_t MCG, uint8_t MCB);
void set_max_current(uint8_t MCRGB);
void set_function_data(bool DSPRPT, bool TMGRST, bool RFRESH, bool ESPWM, bool LSDVLT);
void set_rgb_pin_order(uint8_t rPos, uint8_t grPos, uint8_t bPos);
void set_pin_order_single(int16_t led_number, uint8_t color_channel_index, uint8_t position);
void set_rgb_pin_order_single(int16_t led_number, uint8_t rPos, uint8_t grPos, uint8_t bPos);

/* Sending data to device (Updating, flushing, latching) */
void set_buffer(uint8_t bit);
void set_control_mode_bit(bool is_control_mode);
void flush_buffer();
void update();
void latch();
void update_control();

/* SPI Baud rate */
void set_sclk_frequency(uint32_t new_baud_rate);
uint32_t get_sclk_frequency();

/* GSCLK Frequency */
void set_gsclk_frequency(uint32_t new_gsclk_frequency);
uint32_t get_gsclk_frequency();

/* Diagnostic Methods */
void print_byte(byte myByte);

static const uint8_t chip_count; // This
static const uint8_t COLOR_CHANNEL_COUNT = 3;
static const uint8_t LEDS_PER_CHIP = 16;
static bool enforce_max_current;
static float max_current_amps;

static uint8_t _dc_data[][LEDS_PER_CHIP][COLOR_CHANNEL_COUNT];
static uint8_t _rgb_order[][LEDS_PER_CHIP][COLOR_CHANNEL_COUNT];
static uint16_t _grayscale_data[][LEDS_PER_CHIP][COLOR_CHANNEL_COUNT];

uint8_t rgb_order_default[3] = {0, 1, 2};

private:
  int debug = 0;
  uint8_t _gslat;
  uint8_t _spi_mosi;
  uint8_t _spi_clk;
  uint8_t _gsclk;

  uint8_t _function_data;
  uint16_t _bright_red;
  uint16_t _bright_green;
  uint16_t _bright_blue;
  uint8_t _MCR;
  uint8_t _MCG;
  uint8_t _MCB;

  /* SPI */
  uint8_t _buffer;
  int8_t _buffer_count = 7;
  SPISettings mSettings;
  uint32_t spi_baud_rate = SPI_BAUD_RATE;
  uint32_t gsclk_frequency = GS_FREQUENCY;
};

#endif
