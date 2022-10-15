#!/bin/sh

steps=( "foo" "bar" "baz" )

for step in ${steps[@]}
do
    :
    echo $step
done