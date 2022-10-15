#GBUTILS#
# HOME="/c/Users/leona" (already set)
GBUTILS_HOME="/c/pocket/git"

VIMRC_PATH="$HOME/.vimrc"
PROFILE_PATH="$GBUTILS_HOME/.gbutils_profile"
ALIAS_PATH="$GBUTILS_HOME/.gbutils_aliases"
GC_PATH="$HOME/.gitconfig"
SSH_D="$HOME/.ssh"
SSH_K="$SSH_D/id_rsa_gbutils"

NPMRC_PATH="$HOME/.npmrc"
TMUXCONF_PATH=""
EMACS_PATH="$HOME/.emacs"

# Linux
alias l="ll -ha"
alias la="ll -a"

# VIM
alias v="vim"
alias vimenv="v --version"
alias vimenvg="v --version | grep"
alias vimv="v $VIMRC_PATH"
alias viml="less $VIMRC_PATH"
alias vimg="cat $VIMRC_PATH | grep"

# PROFILE
alias prs="source $PROFILE_PATH"
alias prv="v $PROFILE_PATH"
alias prl="less $PROFILE_PATH"
alias prg="cat $PROFILE_PATH | grep"

e# ALIASES
alias als="source $ALIAS_PATH"
alias alv="v $ALIAS_PATH"
alias all="less $ALIAS_PATH"
alias alg="cat $ALIAS_PATH | grep"

# GIT CONFIG
alias gcv="v $GC_PATH"
alias gcl="less $GC_PATH"
alias gcg="cat $GC_PATH | grep"

# SSH
alias sshe="eval \$(ssh-agent -s)"
alias ssha="ssh-add"
alias sshad="ssh-add $SSH_K"
alias sshman="sshe && ssha"
SSHAG_PSEF="\\\$(ps -ef | grep ssh-agent | tr -s ' ' | cut -d' ' -f3)"
alias sshk=\"kill $SSHAG_PSEF &>/dev/null\"
alias sshhs="ssh -T"
alias sshhsh="ssh -T git@github.com"
alias sshhsl="ssh -T git@gitlab.com"
alias sshman="sshe && sshad && sshhsl"

# CHMOD
alias chmx="chmod +x"

chmxx() { chmx $1 && ./"$1" "${@:2}"; }
chmxxabs() { chmx $1 && $1 "${@:2}"; }

# GIT
alias g="git"

# git:ETC
alias gcl="g clone"
alias gs="g status"
alias gd="g diff"
alias ga="g add"
alias gm="g merge"
alias gswitch="g switch -c"

# git:BRANCH
alias gb="g branch"
alias gbv="gb -v"
alias gbvv="gb -vv"

# git:CHECKOUT
alias gk="g checkout"
alias gkb="gk -b"

# git:PULL
alias gl="g pull"
alias glo="gl origin"

# git:PUSH
alias gp="g push"
alias gpo="gp origin"
alias gpsupo="gp --set-upstream origin"
alias gpdelo="gp --delete origin"

# git:REMOTE
alias gr="g remote"
alias grv="gr -v"

# git:FETCH
alias gf="g fetch"
alias gfo="gf origin"
alias gfpo="gf --prune origin"

# git:COMMIT
alias gc="g commit"
alias gca="gc -a"
alias gcam="gc -am"

# git:LOG
alias glog="g log"
alias gloga="glog --all"
alias glogg="glog --graph"
alias glogga="glogg --all"
alias gloggao="glogga --oneline"
alias gloggap="glogga --pretty"
alias lago="gloggao"

# git:STASH
alias gst="g stash"
alias gsta="gst apply"
alias gstd="gst drop"
alias gstl="gst list"
alias gstp="gst pop"
alias gsts="gst show"

# git:CONFIG
alias gconf="g config"
alias gconfg="gconf --global"
alias gconfl="gconf --list"
alias gconfgl="gconfg --list"
alias gconflso="gconfl --show-origin"
alias gconfglsog="gconflso | grep"
########################################
