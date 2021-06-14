#!/bin/bash

: ${BUG:=""}


c=0
while true;do
    c=$((c+1))
    if [[ -z $BUG ]];then
        echo "[`date` ${c}s] Yes! you are using the good ✅ image"
    elif [[ $BUG == "FATAL" ]];then
        echo -e "[`date`] This is a bug 🐞 ! you are using the '-buggy' image \nHint: in order to fix it you may need edit/update the image and remove the -buggy from the image tag. 😉\n\n"
        bug
        sleep 0.5
    else
        bug || true
        echo -e "[`date`] This is a bug 🐞 ! you are using the '-buggy' image \nHint: in order to fix it you may need edit/update the image and remove the -buggy from the image tag. 😉\n\n"
        sleep 0.5
    fi
    sleep 1
done
