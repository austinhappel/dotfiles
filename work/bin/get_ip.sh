#!/bin/sh

file=~/Dropbox/si-ifconfig.txt
echo "IFCONFIG AS OF: "$(date)"\n\n" > $file
ifconfig >> $file

