#!/bin/bash

if [ ! -z "$1" ]; then
cd $1;
echo "Changed cwd to ${1}";
fi

for f in $(find ./ -maxdepth 1 -type f); do
	exif_data=$(identify -verbose ${f} | grep exif:DateTimeOriginal | awk '{print $2"_"$3}');
	dir_name=$(echo "${exif_data:0:10}" | sed 's/:/-/g');
	filename=$(echo ${exif_data} | sed 's/://g');
	file_extension=$(echo ${f} | awk -F'.' '{print $3}' | tr '[:upper:]' '[:lower:]');
	uuid=$(uuidgen);
        echo "mv ${f} ./${dir_name}/${filename}.${uuid}.${file_extension};"
done
