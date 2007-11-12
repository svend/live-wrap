#!/bin/sh
# Enable inittab serial console

sed -i '/^#T0/ s/^#//' /etc/inittab
