#!/bin/env bash
# Read touchscreen input node @ /dev/input/event4 to determine gestures when the display is off

# Configuration
sleep_seconds=1

# Logging
log() {
	echo "gestured: $@" > /var/log/gestured.log
}
echo "gestured: logs in /var/log/gestured.log"

# MPRIS2
mpris_service=""

update_mpris_service() {
	# e.g. "org.mpris.MediaPlayer2.jolla-mediaplayer"
	mpris_service=`dbus-send --dest=org.freedesktop.DBus --type=method_call --print-reply /org/freedesktop/DBus org.freedesktop.DBus.ListNames | grep mpris | head -1 | cut -d'"' -f2`
}

mpris_do_action() {
	mpris_action="$1" # e.g. 'PlayPause', 'Previous', 'Next'

	update_mpris_service
	if [ "$mpris_service" = "" ]; then
		log "mpris_do_action: No MPRIS2 service registred, ignoring request..."
		return
	fi

	dbus-send --type=method_call --dest=$mpris_service /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.$mpris_action

	unset mpris_action
}

# Enable all gestures
for g in `ls -1 /proc/touchpanel/ | grep enable | grep -v tpedge | grep -v sleep`; do
	echo 1 > /proc/touchpanel/$g
done

while true; do
	evdev_trace -t 4 | while read -r line; do
		echo $line | grep "0$" &>/dev/null && continue

		#log "Waiting for a gesture..."
		# TODO: Check proximity sensor to prevent accidental activations

		# Arrows (<>^V)
		if echo $line | grep "0x0fc" > /dev/null; then
			log "Arrow UP detected, showing recent calls..."
			# TODO Attempt unlock?
			dbus-send --type=method_call --dest=com.jolla.voicecall.ui /org/maemo/m com.nokia.telephony.callhistory.launch string:null
		elif echo $line | grep "0x0ff" > /dev/null; then
			log "Arrow DOWN detected, toggling flashlight..."
			dbus-send --type=method_call --dest=com.jolla.settings.system.flashlight /com/jolla/settings/system/flashlight com.jolla.settings.system.flashlight.toggleFlashlight
		elif echo $line | grep "0x0fd" > /dev/null; then
			log "Arrow LEFT detected, playing previous song..."
			mpris_do_action "Previous"
		elif echo $line | grep "0x0fe" > /dev/null; then
			log "Arrow RIGHT detected, skipping current song..."
			mpris_do_action "Next"

		# Letters (OSMW)
		elif echo $line | grep "0x0f7" > /dev/null; then
			log "Letter M detected"
		elif echo $line | grep "0x0fa" > /dev/null; then
			log "Letter O detected, launching camera..."
			# TODO Attempt unlock?
			dbus-send --type=method_call --dest=com.jolla.camera / com.jolla.camera.ui.showViewfinder string:null
		elif echo $line | grep "0x0f8" > /dev/null; then
			log "Letter S detected"
		elif echo $line | grep "0x0f6" > /dev/null; then
			log "Letter W detected"

		# Lines ()
		elif echo $line | grep "0x042" > /dev/null; then
			log "Line UP detected"
		elif echo $line | grep "0x041" > /dev/null; then
			log "Line DOWN detected"
		elif echo $line | grep "0x040" > /dev/null; then
			log "Line LEFT detected"
		elif echo $line | grep "0x03f" > /dev/null; then
			log "Line RIGHT detected"

		# Misc
		elif echo $line | grep "0x0fb" > /dev/null; then
			log "|| detected, toggling media playback..."
			mpris_do_action "PlayPause"
		elif echo $line | grep "0x08f" > /dev/null; then
			log "Double-tap detected, waking up..."
			# TODO Wake up from here?

		# Unknown gesture, wait a bit...
		else
			#(( $(</sys/class/leds/lcd-backlight/brightness) == 0 )) && continue

			#log "Unknown gesture detected, waiting..."
			break
		fi
	done

	sleep $sleep_seconds
done
