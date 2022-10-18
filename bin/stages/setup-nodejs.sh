#!/bin/sh

./lib/unzip/unzip-nvm.sh
./lib/unzip/unzip-nvm-post-install.sh

# nvm install & use node 16.17.1
./bin/stages/install-node.sh
