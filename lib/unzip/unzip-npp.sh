#!/bin/sh

source ./config

echo "NPP_ZIP=$NPP_ZIP"
echo "TARGET=$HOST_NPP_DIR"

unzip $NPP_ZIP -d $HOST_NPP_DIR &>/dev/null
