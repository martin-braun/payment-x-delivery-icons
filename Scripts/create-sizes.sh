#!/bin/bash

if [[ ! $1  ]]; then
	echo "Please provide path to SVG file to generate all PNGs for it. Please make sure to have librsvg installed."
	exit 0
fi

rsvg-convert -w 100 "$1" > "${1%.*}.png"
rsvg-convert -w 200 "$1" > "${1%.*}@2x.png"
rsvg-convert -w 128 "$1" > "${1%.*}_128.png"
rsvg-convert -w 256 "$1" > "${1%.*}_256.png"
rsvg-convert -w 512 "$1" > "${1%.*}_512.png"