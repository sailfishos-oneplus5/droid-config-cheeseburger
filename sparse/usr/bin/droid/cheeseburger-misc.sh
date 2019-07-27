#!/bin/env bash
# A miscellaneous preparation script to run on device startup.

# Enable backlight for physical buttons
echo 1 > /sys/class/leds/button-backlight/brightness

# Prepare log files for custom daemons
rm /var/log/{gestured,callaudiod}.log
touch /var/log/{gestured,callaudiod}.log 
chown nemo: /var/log/{gestured,callaudiod}.log

# Create links to Android Storage on first boot
[ ! -f /var/tmp/make-droid-links ] && exit 0

m_path="/data/media"
[ -d "$m_path/0" ] && m_path+="/0"

rm -f /home/nemo/android_storage /sdcard
ln -s $m_path /home/nemo/android_storage
ln -s $m_path /sdcard

rm /var/tmp/make-droid-links
