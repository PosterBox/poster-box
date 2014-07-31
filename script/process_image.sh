#!/bin/sh

IMGPATH=app/assets/images

cd $IMGPATH

for i in images.*.jpg; do
    INDEX=`echo $i | awk -F. '{print $2}'`
    NEWNAME=$((1$INDEX-1000)).jpg
    echo rename $i -> $NEWNAME
    mv $i $NEWNAME
done
