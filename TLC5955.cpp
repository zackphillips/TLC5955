/*
   TLC5955 Control Library
   Used to control the TI TLC5955 LED driver chip
   Zack Phillips - zkphil@berkeley.edu
   Product Page: http://www.ti.com/product/tlc5955
   Copyright (c) 2015, Zachary F. Phillips
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

#include <TLC5955.h>

SPISettings mSettings(SPI_BAUD_RATE, MSBFIRST, SPI_MODE0);

void TLC5955::init(uint16_t tlc_count,
                   bool use_as_single_channel,
                   uint8_t gslat,
                   uint8_t spi_mosi,
                   uint8_t spi_clk)
{
  _tlc_count = tlc_count;
  _use_as_single_channel = use_as_single_channel;
  _gslat = gslat;
  _spi_clk = spi_clk;
  _spi_mosi = spi_mosi;
  _buffer_count = 7;
  pinMode(_gslat, OUTPUT);
  digitalWrite(_gslat, LOW);

  // Define number of channels used (color and LED indicies)
  if (_use_as_single_channel)
  {
    _leds_per_chip = 48;
    _color_channel_count = 1;
  } else
  {
    _leds_per_chip = LED_CHANNEL_COUNT;
    _color_channel_count = LED_COLOR_CHANNEL_COUNT;
  }

  // Initialize dynamic arrays
  _grayscale_data = new uint16_t * * [_tlc_count];
  _rgb_order = new uint8_t * * [_tlc_count];
  _dc_data = new uint8_t * * [_tlc_count];
  for (uint16_t tlc_index = 0; tlc_index < _tlc_count; tlc_index++)
  {
    _grayscale_data[tlc_index] = new uint16_t * [_leds_per_chip];
    _rgb_order[tlc_index] = new uint8_t * [_leds_per_chip];
    _dc_data[tlc_index] = new uint8_t * [_leds_per_chip];
    for (uint8_t led_channel_index = 0; led_channel_index < _leds_per_chip;
         led_channel_index++)
    {
      _grayscale_data[tlc_index][led_channel_index] =
        new uint16_t [_color_channel_count];
      _rgb_order[tlc_index][led_channel_index] =
        new uint8_t [_color_channel_count];
      _dc_data[tlc_index][led_channel_index] = new uint8_t [_color_channel_count];

      for (uint8_t color_channel_index = 0;
           color_channel_index < _color_channel_count; color_channel_index++)
      {
        _grayscale_data[tlc_index][led_channel_index][color_channel_index] =
          0;
        _rgb_order[tlc_index][led_channel_index][color_channel_index] =
          color_channel_index;
        _dc_data[tlc_index][led_channel_index][color_channel_index] = 0;
      }
    }
  }
}

void TLC5955::setRgbPinOrder(uint8_t rPos, uint8_t grPos, uint8_t bPos)
{
  if (_color_channel_count == 3)
  {
    for (int8_t chip = _tlc_count - 1; chip >= 0; chip--)
    {
      for (int8_t channel = 0; channel < _leds_per_chip; channel++)
      {
        _rgb_order[chip][channel][0] = rPos;
        _rgb_order[chip][channel][1] = grPos;
        _rgb_order[chip][channel][2] = bPos;
      }
    }
  } else
    Serial.println(F("ERROR (TLC5955::setRgbPinOrder): color channel count is not 3"));
}

void TLC5955::setPinOrderSingle(uint16_t led_number, uint8_t color_channel_index, uint8_t position)
{
  uint8_t chip = (uint16_t)floor(led_number / _leds_per_chip);
  uint8_t channel = (uint8_t)(led_number - _leds_per_chip * chip);              // Turn that LED on
  _rgb_order[chip][channel][color_channel_index] = position;
}

void TLC5955::printByte(byte my_byte)
{
  for (byte mask = 0x80; mask; mask >>= 1)
  {
    if (mask  & my_byte)
      Serial.print('1');
    else
      Serial.print('0');
  }
}

void TLC5955::setAllLed(uint16_t gsvalue)
{
  for (int8_t chip = _tlc_count - 1; chip >= 0; chip--)
  {
    for (int8_t a = 0; a < _leds_per_chip; a++)
    {
      for (int8_t b = 0; b < _color_channel_count; b++)
        _grayscale_data[chip][a][b] = gsvalue;
    }
  }
}

void TLC5955::setAllLedRgb(uint16_t red, uint16_t green, uint16_t blue)
{
  if (_color_channel_count == 3)
  {
    for (int8_t chip = _tlc_count - 1; chip >= 0; chip--)
    {
      for (int8_t channel = 0; channel < _leds_per_chip; channel++)
      {
        _grayscale_data[chip][channel][2] = blue;
        _grayscale_data[chip][channel][1] = green;
        _grayscale_data[chip][channel][0] = red;
      }
    }
  } else
    Serial.println(F("ERROR (TLC5955::setAllLedRgb): color channel count is not 3"));
}

void TLC5955::flushBuffer()
{
  setControlModeBit(CONTROL_MODE_OFF);
  SPI.beginTransaction(mSettings);
  for (int16_t fCount = 0; fCount < _tlc_count * TOTAL_REGISTER_SIZE / 8; fCount++)
    SPI.transfer(0);
  SPI.endTransaction();
}

void TLC5955::setControlModeBit(bool is_control_mode)
{
  // Make sure latch is low
  digitalWrite(_gslat, LOW);

  // Turn off SPI Temporarily
  SPI.end();

  // Enable digital IO
  pinMode(_spi_mosi, OUTPUT);
  pinMode(_spi_clk, OUTPUT);

  // Manually write control sequence
  if (is_control_mode)
  {
    // Manually Write control sequence
    digitalWrite(_spi_mosi, HIGH);                      // Set MSB to HIGH
    digitalWrite(_spi_clk, LOW);                              // Clock
    // Pulse
    digitalWrite(_spi_clk, HIGH);
    digitalWrite(_spi_clk, LOW);
    shiftOut(_spi_mosi, _spi_clk, MSBFIRST, B10010110);                             // see
    // datasheet
    // HLLHLHHL
    if (debug >= 2)
    {
      Serial.print('1');
      printByte(B10010110);
    }
  } else
  {

    if (debug >= 2)
      Serial.print('0');

    digitalWrite(_spi_mosi, LOW);     // Set MSB to LOW
    digitalWrite(_spi_clk, LOW);      // Clock Pulse
    digitalWrite(_spi_clk, HIGH);
    digitalWrite(_spi_clk, LOW);
  }
  SPI.begin();
}

void TLC5955::updateLeds()
{
  if (debug >= 2)
  {
    Serial.println(F("Begin LED Update String (All Chips)..."));
    Serial.println(' ');
  }

  for (int16_t chip = (int8_t)_tlc_count - 1; chip >= 0; chip--)
  {
    setControlModeBit(CONTROL_MODE_OFF);
    SPI.beginTransaction(mSettings);
    uint8_t color_channel_ordered;
    for (int8_t led_channel_index = (int8_t)_leds_per_chip - 1; led_channel_index >= 0; led_channel_index--)
    {
      for (int8_t color_channel_index = (int8_t)_color_channel_count - 1; color_channel_index >= 0; color_channel_index--)
      {
        color_channel_ordered = _rgb_order[chip][led_channel_index][(uint8_t) color_channel_index];
        SPI.transfer((char)(_grayscale_data[chip][led_channel_index][color_channel_ordered] >> 8));       // Output MSB first
        SPI.transfer((char)(_grayscale_data[chip][led_channel_index][color_channel_ordered] & 0xFF));     // Followed by LSB

        if (debug >= 2)
        {
          printByte((char)(_grayscale_data[chip][led_channel_index][color_channel_ordered] >> 8));
          printByte((char)(_grayscale_data[chip][led_channel_index][color_channel_ordered] & 0xFF));
        }
      }
    }
    SPI.endTransaction();
  }

  if (debug >= 2)
  {
    Serial.println(' ');
    Serial.println(F("End LED Update String (All Chips)"));
  }
  latch();
}

void TLC5955::setChannel(uint16_t channel_number, uint16_t value)
{
  // Change to multi-channel indexing
  int16_t channel_number_rgb = (int16_t) round(channel_number / _color_channel_count);
  int16_t color_channel_number = (int16_t) channel_number % _color_channel_count;

  // Calculate chip and channel indicies
  uint8_t chip = (uint16_t)floor(channel_number_rgb / _leds_per_chip);
  uint8_t channel = (uint8_t)(channel_number_rgb - _leds_per_chip * chip);

  _grayscale_data[chip][channel][color_channel_number] = value;
}

void TLC5955::setLed(uint16_t led_number, uint16_t red, uint16_t green, uint16_t blue)
{
  uint8_t chip = (uint16_t)floor(led_number / _leds_per_chip);
  uint8_t channel = (uint8_t)(led_number - _leds_per_chip * chip);              // Turn that LED on
  _grayscale_data[chip][channel][2] = blue;
  _grayscale_data[chip][channel][1] = green;
  _grayscale_data[chip][channel][0] = red;
}

void TLC5955::setLedAppend(uint16_t led_number, uint16_t red, uint16_t green, uint16_t blue)
{
  uint8_t chip = (uint16_t)floor(led_number / _leds_per_chip);
  uint8_t channel = (uint8_t)(led_number - _leds_per_chip * chip);              // Turn that LED on

  if (((uint32_t)blue + (uint32_t) _grayscale_data[chip][channel][2]) > (uint32_t)UINT16_MAX)
    _grayscale_data[chip][channel][2] = UINT16_MAX;
  else
    _grayscale_data[chip][channel][2] = blue  + _grayscale_data[chip][channel][2];

  if (((uint32_t)green + (uint32_t) _grayscale_data[chip][channel][1]) > (uint32_t)UINT16_MAX)
    _grayscale_data[chip][channel][1] = UINT16_MAX;
  else
    _grayscale_data[chip][channel][1] = green  + _grayscale_data[chip][channel][1];

  if (((uint32_t)red + (uint32_t) _grayscale_data[chip][channel][0]) > (uint32_t)UINT16_MAX)
    _grayscale_data[chip][channel][0] = UINT16_MAX;
  else
    _grayscale_data[chip][channel][0] = red  + _grayscale_data[chip][channel][0];
}

void TLC5955::setLed(uint16_t led_number, uint16_t rgb)
{
  uint8_t chip = (uint16_t)floor(led_number / _leds_per_chip);
  uint8_t channel = (uint8_t)(led_number - _leds_per_chip * chip);              // Turn that LED on
  _grayscale_data[chip][channel][2] = rgb;
  _grayscale_data[chip][channel][1] = rgb;
  _grayscale_data[chip][channel][0] = rgb;
}

void TLC5955::setMaxCurrent(uint8_t MCR, uint8_t MCG, uint8_t MCB)
{
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

void TLC5955::setMaxCurrent(uint8_t MCRGB)
{
  // Ensure max Current agrees with datasheet (3-bit)
  if (MCRGB > 7)
    MCRGB = 7;
  _MCR = MCRGB;
  _MCG = MCRGB;
  _MCB = MCRGB;
}

// Defines functional bits in settings - see datasheet for what
void TLC5955::setFunctionData(bool DSPRPT, bool TMGRST, bool RFRESH, bool ESPWM, bool LSDVLT)
{
  uint8_t data = 0;
  data |= DSPRPT << 0;
  data |= TMGRST << 1;
  data |= RFRESH << 2;
  data |= ESPWM << 3;
  data |= LSDVLT << 4;
  _function_data = data;
}

// Set Brightness through CURRENT from 10-100% of value set in function mode
void TLC5955::setBrightnessCurrent(uint8_t rgb)
{
  _bright_red = rgb;
  _bright_green = rgb;
  _bright_blue = rgb;
}

// Set Brightness through CURRENT from 10-100% of value set in function mode
void TLC5955::setBrightnessCurrent(uint8_t red, uint8_t green, uint8_t blue)
{
  _bright_red = red;
  _bright_green = green;
  _bright_blue = blue;
}

// Sets all dot correction data to the same value (default should be 255
void TLC5955::setAllDcData(uint8_t dcvalue)
{
  for (int8_t chip = _tlc_count - 1; chip >= 0; chip--)
  {
    for (int8_t a = _leds_per_chip - 1; a >= 0; a--)
    {
      for (int8_t b = _color_channel_count - 1; b >= 0; b--)
        _dc_data[chip][a][b] = dcvalue;
    }
  }
}

void TLC5955::setLedDc(uint16_t led_number, uint8_t color_channel_number, uint8_t dc_value)
{
  if (color_channel_number < _color_channel_count)
  {
    uint8_t chip = (uint16_t)floor(led_number / _leds_per_chip);
    uint8_t channel = (uint8_t)(led_number - _leds_per_chip * chip);
    _dc_data[chip][channel][color_channel_number] = dc_value;
  } else
    Serial.println(F("ERROR (TLC5955::setLedDc) : Invalid color channel number"));
}

// Update the Control Register (changes settings)
void TLC5955::updateControl()
{
  for (int8_t repeatCtr = 0; repeatCtr < CONTROL_WRITE_COUNT; repeatCtr++)
  {
    for (int8_t chip = _tlc_count - 1; chip >= 0; chip--)
    {
      if (debug >= 2)
        Serial.println("Starting Control Mode...");

      _buffer_count = 7;
      setControlModeBit(CONTROL_MODE_ON);

      // Add CONTROL_ZERO_BITS blank bits to get to correct position for DC/FC
      for (int16_t a = 0; a < CONTROL_ZERO_BITS; a++)
        setBuffer(0);
      // 5-bit Function Data
      for (int8_t a = FC_BITS - 1; a >= 0; a--)
        setBuffer((_function_data & (1 << a)));
      // Blue Brightness
      for (int8_t a = GB_BITS - 1; a >= 0; a--)
        setBuffer((_bright_blue & (1 << a)));
      // Green Brightness
      for (int8_t a = GB_BITS - 1; a >= 0; a--)
        setBuffer((_bright_green & (1 << a)));
      // Red Brightness
      for (int8_t a = GB_BITS - 1; a >= 0; a--)
        setBuffer((_bright_red & (1 << a)));
      // Maximum Current Data
      for (int8_t a = MC_BITS - 1; a >= 0; a--)
        setBuffer((_MCB & (1 << a)));
      for (int8_t a = MC_BITS - 1; a >= 0; a--)
        setBuffer((_MCG & (1 << a)));
      for (int8_t a = MC_BITS - 1; a >= 0; a--)
        setBuffer((_MCR & (1 << a)));
      // Dot Correction data
      for (int8_t a = _leds_per_chip - 1; a >= 0; a--)
      {
        for (int8_t b = _color_channel_count - 1; b >= 0; b--)
        {
          for (int8_t c = 6; c >= 0; c--)
            setBuffer(_dc_data[chip][a][b] & (1 << c));
        }
      }

      if (debug >= 2)
        Serial.println(' ');
    }
    latch();
  }
}

void TLC5955::latch()
{
  digitalWrite(_gslat, LOW);
  digitalWrite(_gslat, HIGH);
  delayMicroseconds(LATCH_DELAY);
  digitalWrite(_gslat, LOW);
}

// Get a single channel's current values
uint16_t TLC5955::getChannelValue(uint16_t channel_number, int color_channel_index)
{
  if (color_channel_index >= _color_channel_count)
    return 0;

  uint8_t chip = (uint16_t)floor(channel_number / _leds_per_chip);
  uint8_t channel = (uint8_t)(channel_number - _leds_per_chip * chip);
  return _grayscale_data[chip][channel][color_channel_index];
}

// SPI interface - accumulates single bits, then sends over SPI
// interface once we accumulate 8 bits
void TLC5955::setBuffer(uint8_t bit)
{
  bitWrite(_buffer, _buffer_count, bit);
  _buffer_count--;
  SPI.beginTransaction(mSettings);
  if (_buffer_count == -1)
  {
    if (debug >= 2)
      printByte(_buffer);

    SPI.transfer(_buffer);
    _buffer_count = 7;
    _buffer = 0;
  }
  SPI.endTransaction();
}
