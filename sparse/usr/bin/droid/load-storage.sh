#!/bin/bash

#Fixup permissions
chmod 0777 /data
chmod 0777 /data/media
chmod 0777 /data/media/0
chmod 0777 /data/media/0/DCIM
chmod -R 0777 /data/media/0/Music
chmod -R 0777 /data/media/0/DCIM/Camera

#Create folder to store vault
mkdir -p  /data/media/0/storage

#Create link to sdcard
ln -sfn /data/media/0 /home/nemo/android_storage
ln -sfn /data/media/0/storage /home/nemo/.vault

chown -R nemo /home/nemo/.vault
