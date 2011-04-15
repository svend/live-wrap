#!/bin/sh
# Enable avahi reflector mode

sed -i '/\<enable-reflector\>/c\
ennable-reflector=yes' /etc/avahi/avahi-daemon.conf
