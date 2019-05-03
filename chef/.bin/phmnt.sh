#! /bin/sh

sudo modprobe fuse 2>/dev/null
sudo simple-mtpfs --device 1 /media/phone
