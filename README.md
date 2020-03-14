# CircleBoy
CirlceBoy is a small circuit board that lets you replace the directional pad on a gameboy or other device with an analog joystick. CircleBoy was designed specifically to us the 3DS cirlce pad with a gameboy, but is adaptable to tons of use cases.

## ATtiny85 Fuses
Since this project uses the reset line on the ATtiny85, once you've written the firmware and enabled the `NO_GOING_BACK_NOW` macro, you'll need to disable the reset on the chip. I did this on my Mac with
```
/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avrdude -C/Applications/Arduino.app/Contents/Java/hardware/tools/avr/etc/avrdude.conf -v -v -v -v -pattiny85 -carduino -P/dev/cu.usbmodem143301 -b19200 -Uhfuse:w:0x5f:m
```
The important part of that is setting the hfuse to 0x5f.
