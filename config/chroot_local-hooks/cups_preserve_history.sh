#!/bin/sh
# CUPS: Disable job history

/etc/init.d/cups start
cupsctl 'PreserveJobHistory=Off'
cupsctl 'PreserveJobFiles=Off'
/etc/init.d/cups stop
