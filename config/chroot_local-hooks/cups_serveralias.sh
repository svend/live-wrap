#!/bin/sh
# CUPS: Work around cups Debian bug #525910

echo 'ServerAlias *' >> /etc/cups/cupsd.conf
