#!/bin/bash
# Actions to execute before starting DHI.

# A patched bionic ld.config.28.txt is required for hybris-16.0
if ! grep -q hybris /system/etc/ld.config.28.txt; then
	echo "using patched bionic ld.config.28.txt for hybris-16.0..."
	mount -o bind /usr/libexec/droid-hybris/system/etc/ld.config.28.txt /system/etc/ld.config.28.txt
	exit $?
fi

# Nothing else is required (for now) so we'll just exit :)
exit 0