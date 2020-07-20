# CircleBoy
CirlceBoy is a small circuit board that lets you replace the directional pad on a gameboy or other device with an analog joystick. CircleBoy was designed specifically to us the 3DS cirlce pad with a gameboy, but is adaptable to tons of use cases.

## Installation Gallery
A gallery of my installation of the board can be [found here](https://imgur.com/a/vMOLDO8).

## Configuration
You can select between 4 different modes for the stick. Modes are selected by shorting out the dpad contacts in the appropriate direction when you turn the system on. The configuration is stored in the EEPROM of the chip, so you only have to set it once.

Direction | Deadzone | Segments
--- | --- | ---
Up (default) | Small | Balanced
Down          | Large | Balanced
Left          | Small | 3/4 Straight, 1/4 Diagonals
Right         | Large | 3/4 Straight, 1/4 Diagonals

## ATtiny85 Fuses
Since this project uses the reset line on the ATtiny85, once you've written the firmware and enabled the `NO_GOING_BACK_NOW` macro, you'll need to disable the reset on the chip. I did this on my Mac with
```
/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avrdude -C/Applications/Arduino.app/Contents/Java/hardware/tools/avr/etc/avrdude.conf -v -v -v -v -pattiny85 -carduino -P/dev/cu.usbmodem143301 -b19200 -Uhfuse:w:0x5f:m
```
The important part of that is setting the hfuse to 0x5f.

