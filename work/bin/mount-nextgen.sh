#!bin/bash

echo "mounting nextgen-1";
mkdir /Volumes/nextgen;
sshfs nextgen@spti-nextgen.com:/home/nextgen /Volumes/nextgen;

echo "mounting nextgen-2";
mkdir /Volumes/nextgen-2;
sshfs nextgen@spti-nextgen-2.com:/home/nextgen /Volumes/nextgen-2;

echo "shelling into nextgen-1";
ssh -XC nextgen@spti-nextgen.com;