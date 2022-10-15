#!/bin/sh

FROM=$HOME
dotfiles=(
    .gitconfig
    .vimrc
    .emacs
)

TO=$WGBD_HOME/.local/cfg-mirror/dotfiles/user

mkdir -p $TO
for dotfile in "${dotfiles[@]}"
do :
    cp $FROM/$dotfile $TO &>/dev/null && echo "coppied $FROM/$dotfile to $TO" || echo "no $FROM/$dotfile"
done

FROM=$WGBD_HOME
dotfiles=(
    .gitconfig
    .vimrc
    .emacs
    .bashrc
    .profile
    .bash_aliases
    .tmux.conf
    .dmnd_profile
    .dmnd_aliases
)

TO=$WGBD_HOME/.local/cfg-mirror/dotfiles/wgbd

mkdir -p $TO
for dotfile in "${dotfiles[@]}"
do :
    cp "$FROM/$dotfile" "$TO" &>/dev/null && echo "coppied $FROM/$dotfile to $TO" || echo "no $FROM/$dotfile"
done
