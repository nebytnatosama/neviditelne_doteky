#!/bin/bash

for i in *.mp4; do
    VID_NAME=$i
    VID_ALIAS=${i/.mp4/}
    INDEX=$VID_ALIAS/index.html
    mkdir -p $VID_ALIAS
    cp $VID_NAME $VID_ALIAS/
    CONTENT=$(cat index.html)
    echo ${CONTENT/VIDNAME/$VID_NAME} > $INDEX
done