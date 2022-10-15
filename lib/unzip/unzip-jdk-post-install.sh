#!/bin/sh

source ./config

echo "# JDK setup"                            >> $GBUTILS_PROFILE
echo "export JAVA_HOME=\"$HOST_JDK_DIR\""     >> $GBUTILS_PROFILE
echo "export PATH=\"\$JAVA_HOME/bin:\$PATH\"" >> $GBUTILS_PROFILE
echo "java --version"                         >> $GBUTILS_PROFILE
echo "javac --version"                        >> $GBUTILS_PROFILE
echo ""                                       >> $GBUTILS_PROFILE

cmd "/C $JDK_ENV_BAT_SCRIPT_WIN_PATH"