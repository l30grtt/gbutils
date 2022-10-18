#!/bin/sh

source ./config

apps=(
    git
    npp
    nvm
    jdk
    eclipse
)

for app in "${apps[@]}"
do
    :
    "./lib/clean/clean-$app.sh" &>/dev/null
    echo "Purged $app"
done