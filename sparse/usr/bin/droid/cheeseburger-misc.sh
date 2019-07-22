#!/bin/env bash

# Enable backlight for buttons
echo 1 > /sys/class/leds/button-backlight/brightness

# Create links to Android Storage on first boot
[ ! -f /var/tmp/make-droid-links ] && exit 0

m_path="/data/media"
[ -d "$m_path/0" ] && m_path+="/0"

rm -f /{home/nemo/android_storage,sdcard}
ln -s $m_path /{home/nemo/android_storage,sdcard}

rm /var/tmp/make-droid-links
