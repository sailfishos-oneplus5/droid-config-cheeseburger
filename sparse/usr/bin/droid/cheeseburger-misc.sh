#!/bin/env bash
# A miscellaneous preparation script to run on device startup.

# Enable backlight for physical buttons
echo 1 > /sys/class/leds/button-backlight/brightness

# We're done here if this isn't the first boot
[ ! -f /var/tmp/make-droid-links ] && exit 0

# Android Storage linking
m_path="/data/media"
[ -d "$m_path/0" ] && m_path+="/0"

rm -f /home/nemo/android_storage /sdcard
ln -s $m_path /home/nemo/android_storage
ln -s $m_path /sdcard

# Misc first boot stuff
chown -R nemo: /home/nemo/
gpasswd -a nemo systemd-journal

# Done
rm /var/tmp/make-droid-links