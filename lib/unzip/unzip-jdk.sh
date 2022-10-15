#!/bin/sh

source ./config

echo "JDK_ZIP=$JDK_ZIP"
echo "TARGET=$HOST_JDK_DIR"

unzip $JDK_ZIP -d $HOST_JDK_DIR &>/dev/null
