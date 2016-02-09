#!/bin/sh
KICKED="/tmp/kicked_`date "+%Y%m%d"`"
[ -f $KICKED ] && exit 0 # Abort if already kicked today
rm -f /tmp/kicked_*      # Delete old kicked files
touch $KICKED            # Create kicked file for today
open https://teamspirit.ap0.visual.force.com/apex/AtkWorkComponent
echo "kicked: `date`"
