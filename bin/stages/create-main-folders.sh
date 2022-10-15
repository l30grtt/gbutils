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
    if [ -d $folder ]; then
        echo "Folder already exists [$folder]" 
    else
        mkdir $folder
        echo "Folder created        [$folder]"
    fi
done
