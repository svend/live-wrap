#!/bin/sh
# Add CUPS printer

/etc/init.d/cups start
lpadmin -p laser-c -E -v usb://Brother/HL-4040CN%20series -m lsb/usr/ghostscript/model/pxlcolor.ppd -D "Brother HL-4040CN" -L "Office"
lpadmin -d laser-c
/etc/init.d/cups stop
