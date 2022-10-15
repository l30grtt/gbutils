#!/bin/sh

source ./config

mkdir -p $GBUTILS_WINPATH_SNAPSHOT_DIR

cmd "/C $SNAPSHOT_PATH_BAT_SCRIPT_WIN_PATH"