#!/bin/sh

source ./config

export NVM_HOME="$HOST_NVM_DIR"
export NVM_SYMLINK="$HOST_NVM_SYMLINK"

$HOST_NVM_DIR/nvm install 16.17.1
$HOST_NVM_DIR/nvm use 16.17.1