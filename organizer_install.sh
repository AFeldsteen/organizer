#!/bin/bash

set+x 

sudo su 

echo "Installing Organizer"

mkdir /bin/organizer

cd /*/*/Downloads
mv organizer.sh /bin/organizer 

cd /bin/organizer chmod u+x

cd /*/*/Downloads
mkdir /etc/organizer 

mv organizer_music.txt /etc/organizer 
mv organizer_documents.txt /etc/organizer
mv organizer_images.txt /etc/organizer
mv organizer_videos.txt /etc/organizer

apt list --installed 2>/dev/null | find 'moreutils' || apt-get install 'moreutils'

apt list --installed 2>/dev/null | find 'findutils' || apt-get install 'findutils'

apt list --installed 2>/dev/null | find 'cron' || apt-get install 'cron'

systemctl enable cron 

cd /*/*/Downloads 
sh organizer_cron.sh 

exit
