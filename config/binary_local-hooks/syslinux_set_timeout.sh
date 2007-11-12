#!/bin/sh
# Set syslinux's timeout

# Set the timeout to 5 seconds (50 deciseconds)
sed -i 's/^timeout.*/timeout 50/' binary/syslinux.cfg
