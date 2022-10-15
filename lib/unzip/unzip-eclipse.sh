#!/bin/sh

source ./config

echo "ECLIPSE_ZIP=$ECLIPSE_ZIP"
echo "TARGET=$HOST_ECLIPSE_DIR"

unzip $ECLIPSE_ZIP -d $HOST_ECLIPSE_DIR &>/dev/null
