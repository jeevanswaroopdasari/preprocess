#!/bin/bash

for filename in ./KTH/raw/boxing/*.avi; do
	just_filename=$(basename -- "$filename")
	filename_without_extension="${just_filename%.*}"
	filename_without_extension_mod=${filename_without_extension::-7}
	echo ${filename_without_extension_mod}	
	ffmpeg -i ${filename} -r 25 -f image2 -s 64x64 ./KTH/processed/boxing/${filename_without_extension_mod}_image-%03d_64x64.png
done

for filename in ./KTH/raw/handclapping/*.avi; do
	just_filename=$(basename -- "$filename")
	filename_without_extension="${just_filename%.*}"
	filename_without_extension_mod=${filename_without_extension::-7}
	echo ${filename_without_extension_mod}	
	ffmpeg -i ${filename} -r 25 -f image2 -s 64x64 ./KTH/processed/handclapping/${filename_without_extension_mod}_image-%03d_64x64.png
done

for filename in ./KTH/raw/walking/*.avi; do
	just_filename=$(basename -- "$filename")
	filename_without_extension="${just_filename%.*}"
	filename_without_extension_mod=${filename_without_extension::-7}
	echo ${filename_without_extension_mod}	
	ffmpeg -i ${filename} -r 25 -f image2 -s 64x64 ./KTH/processed/walking/${filename_without_extension_mod}_image-%03d_64x64.png
done

for filename in ./KTH/raw/handwaving/*.avi; do
	just_filename=$(basename -- "$filename")
	filename_without_extension="${just_filename%.*}"
	filename_without_extension_mod=${filename_without_extension::-7}
	echo ${filename_without_extension_mod}	
	ffmpeg -i ${filename} -r 25 -f image2 -s 64x64 ./KTH/processed/handwaving/${filename_without_extension_mod}_image-%03d_64x64.png
done

for filename in ./KTH/raw/jogging/*.avi; do
	just_filename=$(basename -- "$filename")
	filename_without_extension="${just_filename%.*}"
	filename_without_extension_mod=${filename_without_extension::-7}
	echo ${filename_without_extension_mod}	
	ffmpeg -i ${filename} -r 25 -f image2 -s 64x64 ./KTH/processed/jogging/${filename_without_extension_mod}_image-%03d_64x64.png
done


for filename in ./KTH/raw/running/*.avi; do
	just_filename=$(basename -- "$filename")
	filename_without_extension="${just_filename%.*}"
	filename_without_extension_mod=${filename_without_extension::-7}
	echo ${filename_without_extension_mod}	
	ffmpeg -i ${filename} -r 25 -f image2 -s 64x64 ./KTH/processed/running/${filename_without_extension_mod}_image-%03d_64x64.png
done



