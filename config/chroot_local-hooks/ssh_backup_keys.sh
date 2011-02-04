#!/bin/sh
# Backup ssh host keys, which are removed by lb_chroot_hacks

mkdir /etc/ssh/keys
cp /etc/ssh/ssh_host_*_key /etc/ssh/ssh_host_*_key.pub /etc/ssh/keys
