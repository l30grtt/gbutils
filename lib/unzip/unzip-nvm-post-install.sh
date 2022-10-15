#!/bin/sh

source ./config

echo "# NVM setup"                                     >> $GBUTILS_PROFILE
echo "export NVM_HOME=\"$HOST_NVM_DIR\""               >> $GBUTILS_PROFILE
echo "export NVM_SYMLINK=\"$HOST_NVM_SYMLINK\""        >> $GBUTILS_PROFILE
echo "export PATH=\"\$NVM_HOME:\$NVM_SYMLINK:\$PATH\"" >> $GBUTILS_PROFILE
echo "echo NVM version: \$(nvm version)"               >> $GBUTILS_PROFILE
echo "nvm ls"                                          >> $GBUTILS_PROFILE
echo ""                                                >> $GBUTILS_PROFILE

cmd "/C $NVM_ENV_BAT_SCRIPT_WIN_PATH"