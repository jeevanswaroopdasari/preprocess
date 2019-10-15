#!/bin/bash
for filename in ./KTH/raw/walking/*.avi; do
	
	# adding comments at end	
	#echo ${filename}_extension
	# full path	
	#echo ${filename}
	# file name with extension
	#echo $(basename -- "$filename")
	just_filename=$(basename -- "$filename")
	filename_without_extension="${just_filename%.*}"
	filename_without_extension_mod=${filename_without_extension::-7}
	echo ${filename_without_extension_mod}	
	ffmpeg -i ${filename} -r 25 -f image2 -s 64x64 ./KTH/processed/walking/${filename_without_extension_mod}_image-%03d_64x64.png
done
