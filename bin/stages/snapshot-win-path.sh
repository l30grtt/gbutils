#!/bin/sh

source ./config

mkdir -p $GBUTILS_WINPATH_SNAPSHOT_DIR

cmd "/C C:\repo\gdu\temp\gbutils\lib\scripts\win\snapshot-path.bat"