#!/bin/bash

#ICALURL=
STARTDATE=2017-06-01
ENDATE=2017-07-01

wget -q -O - "$ICALURL" | ./ical2txt |grep -i "$EXPRESION" |sort -i|./count-hours "$STARTDATE" "$ENDATE"
