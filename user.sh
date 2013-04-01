#!/bin/bash


url="http://imgur.com/a/RZWCf#0"

for album in $(curl -s $url | grep -i "imgur.com/a/" | sed s/^.*imgur.com/imgur.com/ | sed s/\"\>// | sed s/^/http:\\/\\//)
do
	echo "Downloading album: $album"
	./imgur.sh $album
done

