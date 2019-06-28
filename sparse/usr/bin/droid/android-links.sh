#!/usr/bin/env bash
local a="/home/nemo/Android Storage"
local s="/sdcard"
local d="/data/media"
if [ ! -L "$p" ]; then
    if [ ! -d "$d/0" ]; then
        ln -s "$d" "$a"
        ln -s "$d" "$s"
    else
        ln -s "$d/0" "$a"
        ln -s "$d/0" "$s"
    fi
fi
