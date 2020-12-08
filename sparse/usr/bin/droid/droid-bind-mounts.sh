#!/bin/sh
set -x

# Allow bionic libc to load libselinux_stubs.so and other crucial Hybris libs to boot SFOS
mount -o bind /usr/libexec/droid-hybris/system/etc/ld.config.28.txt /system/etc/ld.config.28.txt

# Various misc tweaks for e.g. USB, I/O scheduler & cpusets
mount -o bind /usr/libexec/droid-hybris/vendor/etc/init/hw/init.qcom.rc /vendor/etc/init/hw/init.qcom.rc
mount -o bind /usr/libexec/droid-hybris/vendor/etc/init/hw/init.target.performance.rc /vendor/etc/init/hw/init.target.performance.rc
mount -o bind /usr/libexec/droid-hybris/vendor/etc/init/hw/init.target.rc /vendor/etc/init/hw/init.target.rc
