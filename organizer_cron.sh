#!/bin/bash

set+x

echo *0*** cd /bin/organizer sh organizer.sh | sponge crontab

exit 
