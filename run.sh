#!/bin/bash
#qemu-system-aarch64 -machine raspi3 -nographic -cpu cortex-a53 -s -kernel long_plus
qemu-system-aarch64 \
	-machine virt,gic-version=3 \
	-nographic \
	-m size=1024M \
	-s \
 	-kernel long_plus \
	-cpu cortex-a57 -smp 1 \
	-S


