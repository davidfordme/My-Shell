#!/bin/bash

#start with an asset in a folder at 1024px
for f in *.png
do
	convert ${f} -resize 512x512 icon_512x512.png
	convert ${f} -resize 512x512 icon_256x256@2x.png
	convert ${f} -resize 256x256 icon_256x256.png
	convert ${f} -resize 256x256 icon_128x128@2x.png
	convert ${f} -resize 128x128 icon_128x128.png
	convert ${f} -resize 128x128 icon_64x64@2x.png
	convert ${f} -resize 64x64 icon_64x64.png
	convert ${f} -resize 64x64 icon_32x32@2x.png
	convert ${f} -resize 32x32 icon_32x32.png
	convert ${f} -resize 32x32 icon_16x16@2x.png
	convert ${f} -resize 16x16 icon_16x16.png
done
convert icon_16x16.png icon_32x32.png icon_64x64.png icon_128x128.png icon_256x256.png favicon.ico