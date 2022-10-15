#!/bin/sh

steps=(
    # snapshot user and system path values
    snapshot-win-path

    # create pocket repo server & temp folders
    create-main-folders

    # install applications
    unzip-apps

    # setup applications
    post-unzip

    # $HOME/.ssh/id_rsa_gbutils
    generate-ssh-key-pair

    # nvm install & use node 16.17.1
    #install-node
)

for step in ${steps[@]}
do :
    "./bin/stages/$step.sh"
done