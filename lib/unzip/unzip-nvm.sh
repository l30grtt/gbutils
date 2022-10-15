#!/bin/sh

source ./config

echo "NVM_ZIP=$NVM_ZIP"
echo "TARGET=$HOST_NVM_DIR"

unzip $NVM_ZIP -d $HOST_NVM_DIR &>/dev/null
