#!/bin/sh
# CUPS: Listen on all interfaces

/etc/init.d/cups start
cupsctl --share-printers
/etc/init.d/cups stop
