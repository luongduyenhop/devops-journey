#!/bin/bash

SOURCE_DIR=$1
BACKUP_DIR=$2
DATE=$(date +%d-%m-%Y_%S-%M-%H)

if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then 
	echo "Usage: ./backup-folder.sh <source_dir> <backup_dir>"
	exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
	echo "source directory does not exist"
	exit 1
fi

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then 
	echo "Backup created: $BACKUP_FILE"
else
	echo "Backup failed"
	exit 1
fi
