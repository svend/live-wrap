#!/bin/sh
# Enable inittab serial console

echo 'T0:23:respawn:/sbin/getty -L ttyS0 38400 vt100' >> /etc/inittab
