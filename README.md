# AmoTek_Desktop
Simple GUI program allowing for sound visualization on BS-Flex LEDs 
**⚠️This guide is slightly outdated but still useful, the UI is self explanatory."
**⚠️If the update notification is annoying you, edit the "version.txt" file to 99999999.**

**🠗 Instructions below the image 🠗**

![screenshot](https://cdn.discordapp.com/attachments/701418364622340178/973631673151406150/1.jpg)

**🠗 Instructions below the image 🠗**

# Changing colors

If you want to change the colors, the brightness or the audio peak multiplier, make sure to fill out all the fields with numbers.

For example if you want to change the brightness and click apply, the program will read all inputs into other fields aswell, for example also color.
By default, these fields are empty, which means they will be interpreted as 0.

This may result in unwanted settings being set. This means you should make sure to set all the fields to the values you want to set them to aswell.

I may change this behavior to make it more intuitive / user friendly but the current state of the program works like this...

# The music visualizer doesn't work!
If there is seemingly no response to the music, you should play around with the "audio multiplier".
The reason for seemingly no changes in the lights may be due to the audio input (more like output) being too quiet.
TL;DR: Play around with the audio multiplier setting.

# All my LEDs are off?
As stated above, upon changing any setting, the app will read all settings from input boxes and update your settings. If a box is empty, it will be interpreted as 0. **Do not leave the "Brightness" setting empty or at 0! This will result in all LEDs being turned off due to the brightness setting being a prescaler for all color settings!**

# There still is no response to music or sound?!
This may be due to your audio device being changed during runtime. A simple restart of the app may fix this.
Reason for this is because the app fetches the current audio playback device on start of the app.

# I have multiple BlinkSticks connected but the "Slot" setting doesn't work
 Yes, that is correct. I simply haven't had the time to implement this feature correctly.
