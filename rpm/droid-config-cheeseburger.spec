# Reference: ../droid-configs-device/droid-configs.inc

%define vendor oneplus
%define device cheeseburger

%define vendor_pretty OnePlus
%define device_pretty OnePlus 5

%define community_adaptation 1
%define pixel_ratio 1.8

# Device-specific ofono configuration
Provides: ofono-configs
Obsoletes: ofono-configs-mer

%define ofono_enable_plugins bluez5,hfp_ag_bluez5
%define ofono_disable_plugins bluez4,dun_gw_bluez4,hfp_ag_bluez4,hfp_bluez4

%include droid-configs-device/droid-configs.inc
