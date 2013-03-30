#! /bin/sh

###########################################################################
# Example auto start file for i3-wm, I execute it from i3 config with
# exec $HOME/bin/auto-start-for-i3
#
# For mouse moving I use xte. In Debian its in the package xautomation.
###########################################################################


# Wait for program coming up
wait_for_program () {
    n=0
    while true
    do
	# PID of last background command
	if xdotool search --onlyvisible --pid $!; then
	    break
	else
	    # 20 seconds timeout
	    if [ $n -eq 20 ]; then
		xmessage "Error on executing"
		break
	    else
		n=`expr $n + 1`
		sleep 1
	    fi
	fi
    done
}

# move mouse to right
xte 'mousemove 1400 900'
pac &
wait_for_program
i3-msg border none
i3-msg resize grow left 32 px or 32 ppt
# build container
i3-msg split v
sleep 1

### --- Terminal --- ###
gnome-terminal &
#wait_for_program
sleep 2
# Make Terminal bigger and Ding smaller
i3-msg resize shrink up 5 px or 5 ppt
exit 1
### --- ding ---- ###
ding &
wait_for_program
i3-msg border none

# make right half bigger


### --------------------------------- tab START--- ###
### ---------------------------------------------- ###
i3-msg split v
i3-msg layout tabbed

### --- gnome-commander --- ###
gnome-commander &
wait_for_program

### --- chromium --- ###
chromium &
wait_for_program

### --- pdf --- ###
evince /home/fhaun/Dokumente/Haskell/Haskell.pdf &
wait_for_program
### ---------------------------------------------- ###
### ---------------------------------- tab END --- ###

### --- New terminal left under Emacs --- ###
xte 'mousemove 10 10'
i3-msg split v
xfce4-terminal &

# terminal without border and make it smaller
i3-msg border none
i3-msg resize shrink up 32 px or 32 ppt

# Move the mouse to desired position ;-)
xte 'mousemove 800 500'

# Need a refresh, here we go...
xrefresh &

exit 0
