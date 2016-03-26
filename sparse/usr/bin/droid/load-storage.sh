#!/bin/bash


if getent group media_rw | grep &>/dev/null '\nemo\b'; then
    echo true
else
    usermod -a -G media_rw nemo
fi


rm -rf /home/nemo/Music
rm -rf /home/nemo/Pictures
rm -rf /home/nemo/.vault
rm -rf /home/nemo/storage

chmod 0777 /data
chmod 0777 /data/media
chmod 0777 /data/media/0
chmod 0777 /data/media/0/DCIM
chmod -R 0777 /data/media/0/Music
chmod -R 0777 /data/media/0/DCIM/Camera

ln -sfn /data/media/0/Music /home/nemo/Music
ln -sfn /data/media/0/DCIM/Camera /home/nemo/Pictures
ln -sfn /data/media/0/storage /home/nemo/.vault

#chown -R nemo /home/nemo/Pictures
#chown -R nemo /home/nemo/.vault
#chown -R nemo /home/nemo/Music
