%package -n patterns-sailfish-device-configuration-cheeseburger
Summary: Jolla Configuration cheeseburger
Requires: patterns-sailfish-device-configuration-common-cheeseburger
Requires: patterns-sailfish-device-adaptation-cheeseburger

Requires: patterns-sailfish-cellular-apps
Requires: sailfish-content-graphics-z%{icon_res}

# Extended settings functionality
Requires: jolla-settings-system-flashlight
Requires: jolla-settings-networking-multisim
Requires: jolla-settings-accounts-extensions-3rd-party-all

# For devices which support NFC
Requires: jolla-settings-system-nfc
Requires: nfcd-dbuslog-plugin
Requires: nfcd-mce-plugin

# Introduced starting Sailfish OS 2.1.1.26
# Required for Jolla Store Access
Requires: patterns-sailfish-consumer-generic

# For Mozilla location services (online)
Requires: geoclue-provider-mlsdb

# Sailfish OS CSD tool for hardware testing
# needs some configuration to get all features working

# Devices with 2G or more memory should also include this booster
# to improve camera startup times and the like
Requires: mapplauncherd-booster-silica-qt5-media

# Enable device lock and allow to select untrusted software
#Requires: jolla-devicelock-daemon-encsfa

# Fingerprint unlocking daemon for community ports
Requires: sailfish-fpd-community
Requires: sailfish-devicelock-fpd
Requires: droid-biometry-fp

# Enable /home encryption (LVM setup needed)
#Requires: sailfish-device-encryption

# SELinux
#Requires: libselinux-utils
#Requires: libselinux-utils-extra
#Requires: setools
#Requires: policycoreutils

# Early stages of porting benefit from these:
Recommends: patterns-sailfish-rnd
# dev-tools pattern will be fixed in the next release
# for now we'll use its 'exploded' version:
#Recommends: patterns-sailfish-dev-tools
Recommends: jolla-developer-mode
Recommends: strace
#Recommends: gdb
#Recommends: gdb-gdbserver
Recommends: vim-enhanced
Recommends: less
#Recommends: valgrind
#Recommends: lipstick-qt5-tools
#Recommends: libhybris-tests
Recommends: busybox-static
Recommends: openssh-server
Recommends: zypper

# Extras
#Recommends: net-tools
Recommends: openssh-clients
Recommends: htop
Recommends: nano
Recommends: rsync

%description -n patterns-sailfish-device-configuration-cheeseburger
Pattern with packages for cheeseburger configurations

%files -n patterns-sailfish-device-configuration-cheeseburger
