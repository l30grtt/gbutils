#!/bin/sh

source ./config

mkdir -p $HOST_SSH_DIR
rm -fv $HOST_SSH_KEY
yes '' | ssh-keygen -t rsa \
                    -b 4096 \
                    -C $KEY_PAIR_LABEL \
                    -f $HOST_SSH_KEY
cat "$HOST_SSH_KEY.pub"
