#!/bin/env bash
# A temporary *very hacky* solution to enable call audio from earpiece and loudspeaker during voice calls.

# Functions
log() {
  echo "callaudiod: $@"
}

dbus-monitor interface="org.nemomobile.voicecall.VoiceCallManager" | while read -r line; do
    if echo $line | grep "earpiece" > /dev/null; then
        log "Switching audio output to earpiece..."
        pactl set-card-profile droid_card.primary voicecall-voicemmode1
    elif echo $line | grep "ihf" > /dev/null; then
        log "Switching audio output to loudspeaker..."
        pactl set-card-profile droid_card.primary voicecall-voicemmode2
    fi
done
