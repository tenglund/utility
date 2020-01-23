# Personal Tools & Utilites
## Summary

Just a collection scripts/tools writen for personal use with limited error checking. (Not Production quality)

Script | Function
------ | --------
exif_meta_check.sh | Produce a list of images names and the value of exif DateTimeOriginal for each image if present.
check_image_rename.sh | Pre-check script for the image_rename.sh script, produce the expected output of directories and filnames based on image exif data.
image_rename.sh | Rename all image files in the current directory based in the files exif DateTimeOriginal data, move files to folders created based oin the same exif data.
image_sync.sh | rsync all files in the current working directory to a directory specified by the IMG_LIB environment variable.
inventory.sh | Checks all files in the current directory and creates a summary of file extensions to get a quick overview of file types and distribution.
mov_rename.sh | Not yet written. Will rename .MOV files after the movie files exif metadata.
