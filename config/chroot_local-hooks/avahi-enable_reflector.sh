#!/bin/sh
# Enable avahi reflector mode

sed -i '/\<enable-reflector\>/c\enable-reflector=yes' /etc/avahi/avahi-daemon.conf
