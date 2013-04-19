#!/bin/bash
xset r rate 150 100
setxkbmap "us,ru" ",winkeys" "grp:caps_toggle"
exit 1;
if [ "`grep  "model name" /proc/cpuinfo | head -n1`" == "model name	: Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz" ]
then
	if zenity --question --text="Применить настройки большого экрана?"; then
			xrandr --output HDMI1 --on --output LVDS1 --on --output DP1 --off --output VGA1 --mode 1920x1080 --pos 0x0 --rotate normal
	echo
			xrandr --output HDMI1 --off --output LVDS1 --off --output DP1 --off --output VGA1 --mode 1920x1080 --pos 0x0 --rotate normal
	fi
else 
	echo "рабочий комп"
fi
