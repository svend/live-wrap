#!/bin/sh
# Enable syslinux's serial console

sed -i '1 i\
serial 0 38400\
console 0' binary/syslinux/syslinux.cfg
