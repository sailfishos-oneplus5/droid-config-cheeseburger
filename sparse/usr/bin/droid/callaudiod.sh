#!/bin/env bash
# A temporary *very hacky* solution to enable call audio from earpiece and loudspeaker during voice calls.

# Logging
log() {
	echo "callaudiod: $@" >> /var/log/callaudiod.log
}
echo "callaudiod: logs in /var/log/callaudiod.log"

run() {
	log "$ $@"
	$@ >> /var/log/callaudiod.log 2>&1
}

log "daemon started"
dbus-monitor interface="org.nemomobile.voicecall.VoiceCallManager" | while read -r line; do
	#log "dbus: $line"
	if echo $line | grep "earpiece" > /dev/null; then
		log "switching audio output to earpiece..."
		run pactl set-card-profile droid_card.primary voicecall-voicemmode1
	elif echo $line | grep "ihf" > /dev/null; then
		# NOTE: voicemmode2 seems to do nothing
		log "switching audio output to loudspeaker..."
		run pactl set-card-profile droid_card.primary voicecall-voicemmode2
	fi
done
