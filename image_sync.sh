#!/bin/bash

# TODO Add check that IMG_LIB is exported and a valid directory
# TODO Complete the before and after counts & checks

#_n_src=$(find ./ -type f | wc -l);
#_n_dst=$(find ${IMG_LIB}/ -type f | wc -l);
rsync -av $(pwd)/ ${IMG_LIB}/
#_n_dst_p=$(find ${IMG_LIB}/ -type f | wc -l);
#echo "Number of files in source: ${_n_src}";
#echo "Number of files in destination: ${_n_dst}";
#echo "Number of files in destination after sync: ${_n_dst_p}";
#_n_src_dst_diff=$((_n_dst_p-_n_dst));
#echo "Number of new files in destination after sync: ${_n_src_dst_diff}";
