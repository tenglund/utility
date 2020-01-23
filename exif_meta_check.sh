#!/bin/bash

if [ ! -z "$1" ]; then
cd $1;
echo "Changed cwd to ${1}";
fi

echo "Checkig that all files have date time original.."
for f in $(ls); do
	exif_data=$(identify -verbose ${f} | grep 'exif:DateTimeOriginal');
	echo "${f} has exif: ${exif_data}";
	exif_data="";
done
