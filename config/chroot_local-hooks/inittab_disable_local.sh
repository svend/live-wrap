#!/bin/sh
# Disable all but one local consoles

sed -i 's/^\([23456].*\)/#\1/' /etc/inittab
