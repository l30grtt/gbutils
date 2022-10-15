#!/bin/sh

steps=(
    apps
    folders
    env
)

for step in "${steps[@]}"
do :
    ./lib/clean/clean-$step.sh
done