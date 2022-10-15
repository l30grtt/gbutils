#!/bin/sh

source ./config

echo "GIT_ZIP=$GIT_ZIP"
echo "TARGET=$HOST_GIT_DIR"

unzip $GIT_ZIP -d $HOST_GIT_DIR &>/dev/null
