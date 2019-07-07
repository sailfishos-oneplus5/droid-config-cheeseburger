#!/usr/bin/env bash
[ ! -f /var/tmp/make-droid-links ] && exit 0

m_path="/data/media"
[ -d "$m_path/0" ] && m_path+="/0"

rm -f /home/nemo/android_storage /sdcard
ln -s $m_path /home/nemo/android_storage
ln -s $m_path /sdcard

rm /var/tmp/make-droid-links
