#!/bin/env bash
# startup-misc - A miscellaneous preparation script to run on device startup.

# We're done here if this isn't the first boot
[ -f /var/tmp/made-droid-links ] && exit 0

# Android Storage linking
m_path="/data/android/media"
[ -d "$m_path/0" ] && m_path+="/0"

# Determine username since SFOS 3.4.0
user="nemo"
[ -d /home/defaultuser ] && user="defaultuser"

# TODO: Start symlinking in Pictures/Android, Music/Android, ...
rm -f /home/$user/android_storage /sdcard
ln -s $m_path /home/$user/android_storage
ln -s $m_path /sdcard

# Misc first boot stuff
chown -R $user: /home/$user/
gpasswd -a $user systemd-journal

# Done
touch /var/tmp/made-droid-links
