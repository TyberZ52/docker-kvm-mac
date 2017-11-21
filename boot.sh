#!/bin/bash

if [ -f /sysboot/iso/install.iso ]; then
	echo "Install"
	[ ! -f /sysboot/img/hdd.img ] && qemu-img create -f qcow2 /sysboot/img/hdd.img 64G
	./boot-install.sh
else
	if [ ! -f /sysboot/img/hdd.img ]; then
		echo "hdd.img is not exist!"
	else
		echo "Run Mac"
		./boot-mac.sh
	fi
fi
