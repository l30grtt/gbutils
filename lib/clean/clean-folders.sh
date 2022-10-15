#!/bin/sh

source ./config

folders=(
    $HOST_POCKET_DIR
    $HOST_REPO_DIR
    $HOST_SERVERS_DIR
    $HOST_TEMP_DIR
)

for folder in "${folders[@]}"
do :
	rm -rfv $folder
done