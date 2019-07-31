#!/bin/env bash
# Common logging functions used by my scripts

function log() {
	echo "$@"
}

function run() {
	log "$ $@"
	$@ 2>&1
}

