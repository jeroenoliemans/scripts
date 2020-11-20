#!/usr/bin/env bash
# Purpose: resize images
# Author: Jeroen Oliemans

# absolute path to image folder
FOLDER="/home/jeroen/design/janbrugman/fotos-2020/test"

# max width
WIDTH=1280

# max height
HEIGHT=300

#resize png or jpg to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.jpg' -o -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

#resize png to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

#resize jpg only to either height or width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.jpg' -exec convert \{} -verbose -resize $WIDTH\> \{} \;

# alternative
#mogrify -path ${FOLDER} -resize ${WIDTH}x${HEIGHT}% *.png -verbose
