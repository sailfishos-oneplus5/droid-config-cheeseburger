#!/usr/bin/env bash
[ ! -f /var/tmp/make-droid-links ] && exit 0

m_path="/data/media"
[ -d "$m_path/0" ] && m_path+="/0"

ln -s $m_path /home/nemo/android_storage
ln -sf $m_path /sdcard

rm /var/tmp/make-droid-links
