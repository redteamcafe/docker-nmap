#!/bin/sh
TARGETS=/targets/*
OPTIONS=<var>
DATE=`date +%F`
nmap $OPTIONS $TARGETS -oA scan-$DATE > /dev/null
if [ -e scan-prev.xml ]; then
        ndiff scan-prev.xml scan-$DATE.xml > diff-$DATE
        echo "*** NDIFF RESULTS ***"
        cat diff-$DATE
        echo
fi
echo "*** NMAP RESULTS ***"
cat scan-$DATE.nmap
ln -sf scan-$DATE.xml scan-prev.xml
