/*
 * TLC5955 Example Program
 * Zack Phillips, zkphil@berkeley.edu
 * Updated 10/28/2015
 */


#include <TLC5955.h>
#include <SPI.h>

TLC5955 tlc;

#define GSCLK 16
#define LAT 15

void setup() {
// Now set the GSCKGRB to an output and a 50% PWM duty-cycle
  // For simplicity all three grayscale clocks are tied to the same pin
  pinMode(GSCLK, OUTPUT);
  pinMode(LAT,OUTPUT);
  analogWrite(GSCLK, 127);

  // The library does not ininiate SPI for you, so as to prevent issues with other SPI libraries
  SPI.begin();
  //SPI.setClockDivider(SPI_CLOCK_DIV2);

  // init(GSLAT pin, XBLNK pin, default grayscale values for all LEDS)
  tlc.init(LAT);

  // We must set dot correction values, so set them all to the brightest adjustment
  tlc.setAllDCData(127);

  // Set Max Current Values (see TLC5955 datasheet)
  tlc.setMaxCurrent(5,5,5);

  // Set Function Control Data Latch values. See the TLC5955 Datasheet for the purpose of this latch.
  // void setFunctionData(bool DSPRPT, bool TMGRST, bool RFRESH, bool ESPWM, bool LSDVLT);
  tlc.setFunctionData(true, true, false, true, false);

  // set all brightness levels to max (127)
  tlc.setBrightnessCurrent(127,2,2);

  // Finally, call the function to send the data to the TLC5955
  //tlc.setLED(7,65535,65535,65535);
  tlc.updateControl();

  // Update the GS register (ideally LEDs should be dark up to here)
  tlc.setAllLED(0);
  tlc.updateLEDs();

  // Start Serial Connection to PC
  Serial.begin(9600);
}

void loop() {

  //tlc.flushBuffer();
  int mDelay = 300;
  int16_t r = 65535;
  int16_t g = 65535;
  int16_t b = 65535;
  for (int led=0; led<16; led++)
  {
    tlc.setAllLED(0);
    tlc.setLED(led,r,g,b);
    tlc.updateLEDs();
    delay(mDelay);
  }
}
