#!/bin/sh

steps=(
    apps
    env
    folders
)

for step in "${steps[@]}"
do :
    ./lib/clean/clean-$step.sh
done