Requires: patterns-sailfish-applications
Requires: patterns-sailfish-ui
Requires: patterns-sailfish-cellular-apps
Requires: sailfish-content-graphics-z1.75

# Extended settings functionality
Requires: jolla-settings-system-nfc
Requires: jolla-settings-system-flashlight
Requires: jolla-settings-networking-multisim
Requires: jolla-settings-accounts-extensions-3rd-party-all

# Introduced starting Sailfish OS 2.1.1.26
# Required for Jolla Store Access
Requires: patterns-sailfish-consumer-generic

# For Mozilla location services (online)
Requires: geoclue-provider-mlsdb

# Sailfish OS CSD tool for hardware testing
# needs some configuration to get all features working
Requires: csd

# Devices with 2G or more memory should also include this booster
# to improve camera startup times and the like
Requires: mapplauncherd-booster-silica-qt5-media

# Enable device lock and allow to select untrusted software
Requires: jolla-devicelock-daemon-encsfa

# Enable /home encryption
#Requires: sailfish-device-encryption

# SELinux
#Requires: libselinux-utils
#Requires: libselinux-utils-extra
#Requires: setools
#Requires: policycoreutils

# Early stages of porting benefit from these:
# On the basis of sailfish-porter-tools
#Requires: jolla-developer-mode
#Requires: sailfishsilica-qt5-demos
#Requires: busybox-static
#Requires: net-tools
#Requires: openssh-clients
#Requires: openssh-server
#Requires: vim-enhanced
#Requires: zypper
#Requires: strace
#Requires: jolla-rnd-device
#Requires: libhybris-tests
# End sailfish-porter-tools
