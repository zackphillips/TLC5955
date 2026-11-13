# Arduino Library for the TLC5955 LED controller
This library is designed to work with the TLC5955 LED controller chip from Texas Instruments.
It can also be configured to work with many other LED driver chips from the TLC59** family
using the #define values in the header file. Tested on the Teensy 3.2. The library currently calls Teensy-specific
APIs (`SPI.setMOSI`, `analogWriteFrequency`, `analogWriteResolution`), so other boards need those calls ported.
It supports all features of the TLC5955 datasheet such as:
- Per-LED color control and dimming (16-bit)
- Per-LED white-balance
- Support for many, many LEDs by daisy-chaining TLC5955 chips in hardware (up to 255, configurable by the `chip_count` static variable)
- Per color-channel current controller
- PWM spread spectrum (ESPWM flag)
- Optional total-current limit (`enforce_max_current` / `max_current_amps`), estimated from GS, DC, BC and MC per datasheet Equation 1 (`get_total_current()`)

# Installation
After downloading the [Arduino IDE](http://www.arduino.cc/), open `examples/TLC5955/TLC5955.ino` for an example of how to implement this class in your own sketch. Please note that static variables (`chip_count`, `max_current_amps`, `enforce_max_current`, and the `_dc_data`, `_rgb_order`, `_grayscale_data` arrays) must be defined in your sketch so the buffers are sized at compile time.

## Grayscale Clock (GSCLK)
This library works best with a LED clock pulse with a frequency of 1MHz or higher. Most micro-controllers can achieve this, but implementations may be different. For the Teensy, the built-in command ```analogWriteFrequency``` can reliably set the output frequency of a PIN. For other boards, a simple google search should show you which registers to set.

# Stability
This library is stable and well-tested using a Teensy 3.2, but may have bugs for other boards. Please file issues on Github if you find a bug. The API may change slightly as new features are added.

# Contributing
Contributions are encouraged! Please create a pull request on Github, file an issue, or send me a message on Github.

# License
BSD
