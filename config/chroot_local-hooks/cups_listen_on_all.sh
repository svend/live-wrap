#!/bin/sh
# CUPS: Listen on all interfaces

sed -i '/^Listen/s/localhost/*/' /etc/cups/cupsd.conf
