#!/bin/sh

apps=(
    git
    nvm
    npp
    jdk
    eclipse
    # TODO: tomcat
    # TODO: jboss
)

for app in "${apps[@]}"
do :
    "./lib/unzip/unzip-$app.sh"
    echo "Unzipped $app"
done
