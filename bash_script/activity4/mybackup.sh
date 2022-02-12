#!/bin/bash
BACKUP_DIR=~/backup
if [ ! -d "$BACKUP_DIR" ]
then
	mkdir backup
fi
for f in ~/*.*
do
	x=$(basename $f)
	cp $f "${BACKUP_DIR}/${x}$(date)"
done
