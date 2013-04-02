#!/bin/sh

if [ ! -z  `ls -d /tmp/afuse-* 2>/dev/null`  ]; then 
  echo 'Afuse is already running'; 
else
  /usr/bin/afuse -o mount_template="sshfs %r:/ %m" -o unmount_template="fusermount -u -z %m"   ~/sshfs/
fi
