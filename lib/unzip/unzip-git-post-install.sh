#!/bin/sh

source ./config

echo "#gbutils#"                   >> $GIT_PROFILE
echo "source \"$GBUTILS_PROFILE\"" >> $GIT_PROFILE
echo "#end gbutils#"               >> $GIT_PROFILE
echo ""                            >> $GIT_PROFILE

cat ./lib/dotfiles/.gbutils_profile.sh > $GBUTILS_PROFILE
cat ./lib/dotfiles/.gbutils_aliases.sh > $GBUTILS_ALIASES
cat ./lib/dotfiles/.gitconfig          > $GIT_USER_CONFIG

cmd "/C $GIT_ENV_BAT_SCRIPT_WIN_PATH"

# Scripts

# move scripts
mkdir -p "$GIT_TARGET_USR_SRC"

cp -v "./lib/scripts/bash/cfg-mirror.sh"  "$GIT_TARGET_USR_SRC/cfg-mirror.sh"
cp -v "../../lib/sig_utils.sh"            "$GIT_TARGET_USR_SRC/sig_utils.sh"
cp -v "../../lib/ssh_utils.sh"            "$GIT_TARGET_USR_SRC/ssh_utils.sh"
cp -v "../../lib/git_utils.sh"            "$GIT_TARGET_USR_SRC/git_utils.sh"
cp -v "../../lib/git-clone-repository.sh" "$GIT_TARGET_USR_SRC/git-clone-repository.sh"
# ...

# link scripts
mkdir -p "$GIT_TARGET_USR_BIN"

ln -s "$GIT_TARGET_USR_SRC/cfg-mirror.sh"           "$GIT_TARGET_USR_BIN/cfg-mirror"
ln -s "$GIT_TARGET_USR_SRC/sig_utils.sh"            "$GIT_TARGET_USR_BIN/sig_utils.sh"
ln -s "$GIT_TARGET_USR_SRC/ssh_utils.sh"            "$GIT_TARGET_USR_BIN/ssh_utils.sh"
ln -s "$GIT_TARGET_USR_SRC/git_utils.sh"            "$GIT_TARGET_USR_BIN/git_utils.sh"
ln -s "$GIT_TARGET_USR_SRC/git-clone-repository.sh" "$GIT_TARGET_USR_BIN/git-clone-repository"
# ...