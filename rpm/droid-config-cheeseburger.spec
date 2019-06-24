# Reference: ../droid-configs-device/droid-configs.inc

%define vendor oneplus
%define device cheeseburger

%define vendor_pretty OnePlus
%define device_pretty 5

%define community_adaptation 1
%define pixel_ratio 1.85

# Device-specific ofono configuration
Provides: ofono-configs
Obsoletes: ofono-configs-mer

%include droid-configs-device/droid-configs.inc
