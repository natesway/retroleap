#!/bin/bash
if test -f "$1/usr/share/gmenunx/gmenunx"; then
	echo "gmenunx found!"
	mkdir -p $1/.gmenunx/sections/emulators
	# gmenunx defaults, mostly for default volume setting.
	cp board/leapfrog/lfx000/configs/gmenunx/gmenunx.conf $1/.gmenunx/gmenunx.conf

	if test -f "$1/usr/bin/PicoDrive"; then
		cp board/leapfrog/lfx000/configs/gmenunx/menuitems/picodrive $1/.gmenunx/sections/emulators/picodrive
		echo "adding picodrive icon"
	fi
	if test -f "$1/usr/bin/PocketSNES"; then
		cp board/leapfrog/lfx000/configs/gmenunx/menuitems/pocketsnes $1/.gmenunx/sections/emulators/pocketsnes
		echo "adding pocketsnes icon"
	fi
	if test -f "$1/usr/bin/ohboy"; then
		cp board/leapfrog/lfx000/configs/gmenunx/menuitems/ohboy $1/.gmenunx/sections/emulators/ohboy
		mkdir -p $1/configs/ohboy
		cp board/leapfrog/lfx000/configs/ohboy/* $1/configs/ohboy/
		#Crummy hack, fix this when we have a menuing system that can change the working directory.
		ln -s /usr/bin/ohboy $1/configs/ohboy/ohboy
		echo "adding ohboy icon + configs"
	fi


fi
