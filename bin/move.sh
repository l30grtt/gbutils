#!/bin/sh

steps=(
    # snapshot user and system path values
    snapshot-win-path

    # create pocket repo server & temp folders
    create-main-folders

    # git bash stuff
    setup-git

    # install notepad++
    setup-npp

    # install nvm, node & npm
    setup-nodejs

    # install jdk & eclipse
    setup-java

    # $HOME/.ssh/id_rsa_gbutils
    generate-ssh-key-pair
)

for step in ${steps[@]}
do :
    echo "# -> $step"
    "./bin/stages/$step.sh"
done
