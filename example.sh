#!/bin/bash

if [[ $# -lt 1 ]]
    then echo "Usage:"
    echo "   $0 mes"
    exit 0
fi


mes="$1"
mesS=$(( $mes + 1 ))

#URL=
#EXPR=

wget -q -O - "$URL" | \
    ical2txt | \
    grep -i "$EXPR"| \
    sort -i|\
    count-hours "2017-$mes-01" "2017-$mesS-01"
