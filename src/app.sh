#!/bin/bash

: ${INSERT_BUG:=""}


c=0
while true;do
    c=$((c+1))
    if [[ -z ${INSERT_BUG} ]];then
        echo "[`date` ${c}s] Yes! you are using the good ✅ image"
    elif [[ ${INSERT_BUG} == *"FATAL"* ]];then
        echo "[$c] Entering a FATAL bug waiting to reach it..."
        if [[ $c == 5 ]];then
            echo -e "[`date`] FATAL This is a bug 🐞 ! you are using the '-buggy' image \nHint: in order to fix it you may need edit/update the image and remove the -buggy from the image tag. 😉\n\n"
            bug
            exit 100
        fi
        sleep 0.5
    else
        echo -e "[`date`] This is a bug 🐞 ! you are using the '-buggy' image \nHint: in order to fix it you may need edit/update the image and remove the -buggy from the image tag. 😉\n\n"
        bug || true
        sleep 0.5
    fi
    sleep 1
done
