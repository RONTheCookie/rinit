#!/bin/sh
if [ $EUID -ne 0 ]; then
   echo "Must use root" 1>&2
   exit 1
fi

go build

cp rinit /sbin/

# Now you should rebuild your initramfs, if you are running Arch it will do it for you

if [ -e /etc/arch-release ]
then
echo "Arch detected, rebuilding initramfs."
mkinitcpio -p linux
fi

cp -r conf/* /etc/dainit