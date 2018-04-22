# Arduino Library for the TLC5955 LED controller
This library is designed to work with the TLC5955 LED controller chip from Texas Instruments.
It can also be configured to work with many other LED driver chips from the TLC59** family
using the #define values in the header file. Tested to work with the Arduino MEGA and Teensy 3.2, but should work
with any Arduino/Genuino microcontroller or similar. It supports all features of the TLC5955 datasheet such as:
- Per-LED color control and dimming (16-bit)
- Per-LED white-balance
- Support for many, many LEDs by daisy-chaining TLC5955 chips in hardware (configurable by the tlc_count static variable)
- Per color-channel current controller
- PWM spread spectrum (ESPWM flag)

# Installation
After downloading the [Arduino IDE](http://www.arduino.cc/), open the tlc5955.ino file for an example of how to implement this class in your own sketch. Please note that static variables will need to be initialized in your sketch (I found this was the most efficient of managing memory)

# Stability
This library is stable and well-tested using a Teensy 3.2, but may have bugs for other boards. Please file issues on Github if you find a bug. The API may change slightly as new features are added.

# Contributing
Contributions are encouraged! Please create a pull request on Github, file an issue, or send me a message on Github.

# License
BSD
