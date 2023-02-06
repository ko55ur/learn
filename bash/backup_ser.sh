#!/bin/bash

BDIR=/tmp/backup
BDATE=$(date +'%d.%m.%Y_%H.%M')
FILENAME=$BDIR/$(hostname)_$BDATE


tar --totals=USR1 -czf $FILENAME.tar.gz \
--exclude=/proc \
--exclude=/tmp \
--exclude=/mnt \
--exclude=/dev \
--exclude=/sys \
--exclude=/run \
--exclude=/media \
--exclude=/var/log \
--exclude=/var/cache/apt/archives \
--exclude=/usr/src/linux-headers* \
--exclude=/home/*/.gvfs \
--exclude=/home/*/.cache \
--exclude=/home/*/.local/share/Trash \
--exclude=/var/lib/one/datastores \
-C /home/ko55ur . &> $FILENAME.log 
