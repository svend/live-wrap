#!/bin/sh
# Disable local consoles

sed -i 's/^\([23456].*\)/#\1/' /etc/inittab
