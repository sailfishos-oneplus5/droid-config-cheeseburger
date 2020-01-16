# Reference: ../droid-configs-device/droid-configs.inc

%include rpm/header-dumpling.inc

%define vendor_pretty OnePlus
%define device_pretty OnePlus 5T

%define community_adaptation 1
%define use_meta_package 1
%define pixel_ratio 1.75

# Device-specific usb-moded configuration
Provides: usb-moded-configs
Obsoletes: usb-moded-defaults

# Device-specific ofono configuration
Provides: ofono-configs
Obsoletes: ofono-configs-mer

# Obsolete unnecessary PA glue module (we still need audioflingerglue for camera)
Obsoletes: pulseaudio-modules-droid-glue

%define ofono_enable_plugins bluez5,hfp_ag_bluez5
%define ofono_disable_plugins bluez4,dun_gw_bluez4,hfp_ag_bluez4,hfp_bluez4,dun_gw_bluez5,hfp_bluez5

%include droid-configs-device/droid-configs.inc
