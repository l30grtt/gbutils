#!/bin/sh

source ./config

./lib/scripts/restore-win-path.sh

rm -rfv $GBUTILS_WINPATH_SNAPSHOT_DIR