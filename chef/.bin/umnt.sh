#!/bin/sh

sync
sudo umount /media/usb 2>/dev/null
sudo fusermount -u /media/phone 2>/dev/null
