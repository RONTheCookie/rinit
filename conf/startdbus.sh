#!/bin/sh
mkdir -v /run/dbus
echo madedir
dbus-daemon --system --nofork --nopidfile