#!/bin/sh

patch -p0 <<_EOF
--- /usr/share/initramfs-tools/scripts/casper-bottom/25configure_init.orig	2007-09-13 23:39:23.000000000 +0000
+++ /usr/share/initramfs-tools/scripts/casper-bottom/25configure_init	2007-09-13 23:42:37.000000000 +0000
@@ -51,7 +51,7 @@
         fi
     else
         if [ -f /root/etc/inittab ]; then
-            sed -i -e "s|^\([^:]*:[^:]*:[^:]*\):.*getty.*\<\(tty[0-9]*\).*$|\1:/bin/login -f \$USERNAME </dev/\2 >/dev/\2 2>\&1|" /root/etc/inittab
+            sed -i -e "s|^\([^:]*:[^:]*:[^:]*\):.*getty.*\<\(ttyS\?[0-9]*\).*$|\1:/bin/login -f \$USERNAME </dev/\2 >/dev/\2 2>\&1|" /root/etc/inittab
 	fi
         if [ "/root/etc/event.d/tty*" != "\$(echo /root/etc/event.d/tty*)" ]; then
             for f in /root/etc/event.d/tty*; do
_EOF
