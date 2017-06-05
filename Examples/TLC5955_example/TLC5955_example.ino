/*
 * TLC5955 Example Program
 * Zack Phillips, zkphil@berkeley.edu
 * Updated 11/16/2015
 */

#include <TLC5955.h>
#include <SPI.h>

TLC5955 tlc;

#define GSCLK 10 // On Arduino Mega
#define LAT 44   // On Arduino Mega

// Spi pins are needed to send out control bit (SPI only supports bytes)
#define SPI_MOSI 11 // 51 on mega, 22 on teensy2.0++
#define SPI_CLK 13 // 52 on mega, 21 on teensy2.0++


void setup() {
// Now set the GSCKGRB to an output and a 50% PWM duty-cycle
  // For simplicity all three grayscale clocks are tied to the same pin
  pinMode(GSCLK, OUTPUT);
  pinMode(LAT,OUTPUT);

  // Adjust PWM timer (Specific to each microcontroller)
  //TCCR2B = TCCR2B & 0b11111000 | 0x01;

  // Set up clock pulse
  analogWrite(GSCLK, 127);

  // The library does not ininiate SPI for you, so as to prevent issues with other SPI libraries
  SPI.begin();

  // init(GSLAT pin, XBLNK pin, default grayscale values for all LEDS)
  tlc.init(LAT, SPI_MOSI,SPI_CLK);

  // We must set dot correction values, so set them all to the brightest adjustment
  tlc.setAllDcData(127);

  // Set Max Current Values (see TLC5955 datasheet)
  tlc.setMaxCurrent(4,4,4);

  // Set Function Control Data Latch values. See the TLC5955 Datasheet for the purpose of this latch.
  //tlc.setFunctionData(false, true, true, false, true); // WORKS with fast update
  tlc.setFunctionData(true, false, false, true, true);   // WORKS generally

  // set all brightness levels to max (127)
  int currentVal = 127;
  tlc.setBrightnessCurrent(currentVal,currentVal,currentVal);

  // Update Control Register
  tlc.updateControl();

  // Update the GS register (ideally LEDs should be dark up to here)
  tlc.setAllLed(0);
  tlc.updateLeds();
}

void loop() {
  tlc.setAllLed(0);
  int led=7;
  int16_t mDelay = 100;

  int16_t dimMax = 60000;
  int16_t dimDelta = 4000;

  // PWM Dimming
  for (uint16_t dimVal = 0; dimVal <= dimMax; dimVal += dimDelta)
  {
    delay(mDelay);
    tlc.setAllLed(0);
    tlc.setLed(led,dimVal,dimVal,dimVal);
    tlc.updateLeds();
  }

  for (uint16_t dimVal = dimMax; dimVal >= dimDelta; dimVal -= dimDelta)
  {
    delay(mDelay);
    tlc.setAllLed(0);
    tlc.setLed(led,dimVal,dimVal,dimVal);
    tlc.updateLeds();
  }
}