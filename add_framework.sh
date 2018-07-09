#!/bin/sh

echo "Add framework..."
for file in `ls framework/*.apk`
do 

echo "Add framework $file"

java -jar apktool.jar if $file

done
echo "Add framework complete!"
