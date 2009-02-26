#!/bin/sh
# Enable syslinux's serial console

sed -i '1 i\
serial 0 9600 0xab3' binary/syslinux/syslinux.cfg
