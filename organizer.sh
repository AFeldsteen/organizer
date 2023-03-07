#!/bin/bash 

set+x 

xargs -a organizer_music.txt mv -t /home/*/Music

xargs -a organizer_documents.txt mv -t /home/*/Documents

xargs -a organizer_videos.txt mv -t /home/*/Videos

xargs -a organizer_images.txt mv -t /home/*/Pictures

exit

