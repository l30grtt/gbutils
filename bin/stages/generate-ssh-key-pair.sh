#!/bin/sh
source ./config
source ../../lib/ssh_utils.sh

mkdir -p "$HOST_SSH_DIR"

rm -fv $HOST_SSH_KEY
rm -fv $HOST_SSH_KEY.pub

ssh_generate_keypair \
    $KEY_PAIR_LABEL \
    $HOST_SSH_KEY

cat $HOST_SSH_KEY.pub