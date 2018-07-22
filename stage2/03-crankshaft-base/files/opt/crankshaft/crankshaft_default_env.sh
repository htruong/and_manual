### Hardware ###
# The hardware pins can be completly disabled with the global flag.

# Global Flag (enables / disables gpio usage excluding device connected trigger gpio!)
ENABLE_GPIO=1

# Possible used gpio's by hifiberry dac's depending on model:
# For more info visit the hifiberry homepage! To prevent from bugs don't use them!
#
# GPIO 4,5,6,16,18,19,20,21,27,28,29,30,31

# Generally used GPIO's
# Used for HAT modules - Never use it!
# GPIO 27,28

# GPIO Setup
DEV_PIN=4
INVERT_PIN=15
X11_PIN=13

# Device connected gpio (device connected 1 / else 0)
# Note: this gpio depends NOT on ENABLE_GPIO!!!
# To disable set to 0
ANDROID_PIN=0

# GPIO Trigger for Rearcam
# GPIO wich triggers enabling Rearcam Mode of RPICam
# To disable set to 0
REARCAM_PIN=0

### Maintenance / Initial Setup ###
# Start Crankshaft in dev mode to get network, shell and ssh access
# openauto won't be started automatically
DEV_MODE=0
# Start openauto in dev mode if enabled
DEV_MODE_APP=0

### OpenAuto ###
# Start OpenAuto in X11 or EGL
# By default, EGL, but if you can't get it to work, do X11
START_X11=0

### Screen ###
# Brightness related stuff
# When using custom brightness control you can set the BRIGHTNESS_COMMAND which will be executed on brightness change
# Set BRIGHTNESS_FILE to somewhere with write access when using BRIGHTNESS_COMMAND you can use "/tmp/brightness" or similar
BRIGHTNESS_FILE=/sys/class/backlight/rpi_backlight/brightness
BRIGHTNESS_COMMAND=
BR_MIN=30
BR_MAX=255
BR_STEP=25

# Flip the screen 180°
FLIP_SCREEN=0

# Try to identify and setup display during boot
# don't use - only prepared for further releases!
DISPLAY_AUTO_DETECT=0

### Audio ###
# If stored vol is greater than this limit to this value
STARTUP_VOL_MAX=100

###  Power Mgmt Related Stuff ###
# Timeout display after disconnect or after boot without connected device
DISCONNECTION_SCREEN_POWEROFF_SECS=120

# Timeout shutdown after disconnect or after boot without connected device
#
# Note: on first boot timeout is set to 300 seconds - after first start
# this value is used
DISCONNECTION_POWEROFF_MINS=60

### Wifi Setup ###
# Hotspot (if enabled the wifi client is disabled and a hotspot is opened)
ENABLE_HOTSPOT=0
HOTSPOT_PSK=1234567890

# Only used in dev mode
WIFI_SSID=sample
WIFI_PSK=sample
WIFI_COUNTRY=EN

### RPi Camera Module ###
# Overlay settings
RPICAM_X=148
RPICAM_Y=0
RPICAM_WIDTH=604
RPICAM_HEIGTH=420
RPICAM_HFLIP=0
RPICAM_VFLIP=0
RPICAM_ROTATION=0

# RTC Related Settings ###
# Enables day/night switch by rtc - don't change manually!
# Use command 'crankshaft rtc xxx' in shell!
RTC_DAYNIGHT=0

# Day / Night (only working with rtc enabled) - don't change manually!
# Use command 'crankshaft timers daynight xx xx' in shell!
RTC_DAY_START=8
RTC_NIGHT_START=18

# System updates
ALLOW_USB_FLASH=1
