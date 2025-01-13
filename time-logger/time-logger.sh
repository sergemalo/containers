#!/bin/bash
while true; do
    d=$(date -u '+%Y-%m-%d')
    t=$(date -u '+%H:%M:%S')
    echo "$d,$t"
    echo "$d,$t" >> $d.csv
    sleep 1
done

