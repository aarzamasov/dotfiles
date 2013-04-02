#!/bin/bash
i3lock -i /home/artyom/Pictures/Objectivist.png -t
dbus-send --system --print-reply   --dest="org.freedesktop.UPower"   /org/freedesktop/UPower     org.freedesktop.UPower.Suspend