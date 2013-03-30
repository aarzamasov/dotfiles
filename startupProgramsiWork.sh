#!/bin/bash
xset r rate 150 100
setxkbmap "us,ru" ",winkeys" "grp:caps_toggle"
SERVICE='chrome'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo "$SERVICE is running"
else
	nohup /opt/google/chrome/google-chrome  >& /dev/null &
fi
SERVICE='parcellite'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo "$SERVICE is running"
else
	nohup $SERVICE >& /dev/null &
fi
SERVICE='zim'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo "$SERVICE is running"
else
	nohup $SERVICE >& /dev/null &
fi
SERVICE='keepassx'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo "$SERVICE is running"
else
	nohup $SERVICE >& /dev/null &
fi
SERVICE='pidgin'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo "$SERVICE is running"
else
	nohup $SERVICE >& /dev/null &
fi
SERVICE='/usr/bin/pac'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo "$SERVICE is running"
else
	nohup $SERVICE >& /dev/null &
fi

SERVICE='u1sdtool'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo "$SERVICE is running"
else
	nohup $SERVICE >& /dev/null &
fi
