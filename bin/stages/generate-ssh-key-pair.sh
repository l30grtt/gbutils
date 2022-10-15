#!/bin/sh

source ./config

../../lib/ssh_utils.sh

rm -fv $HOST_SSH_KEY

ssh_generate_keypair $KEY_PAIR_LABEL $HOST_SSH_KEY