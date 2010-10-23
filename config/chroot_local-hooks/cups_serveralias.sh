#!/bin/sh
# CUPS: Work around cups Debian bug #525910

/etc/init.d/cups start
cupsctl 'ServerAlias=*'
/etc/init.d/cups stop
