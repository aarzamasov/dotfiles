#!/bin/bash
rsync -av -e "ssh" --delete --exclude ".git*" /home/artyom/Docs/dfMysSqlScripts/ CLAPP2:"/root/artyom/dfMysSqlScripts"
