#!/bin/sh

source ./config

steps=(
    git
    nvm
    jdk
    eclipse
    # TODO: tomcat
    # TODO: jboss
)

for step in "${steps[@]}"
do :
    "./lib/unzip/unzip-$step-post-install.sh"
done