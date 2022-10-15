#!/bin/sh

source ./config

apps=(
    git
    nvm
    npp
    jdk
    eclipse
)

for app in "${apps[@]}"
do
    :
    "./lib/clean/clean-$app.sh" &>/dev/null
    echo "Purged $app"
done