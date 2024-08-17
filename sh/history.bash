# append to the history file, don't overwrite it
shopt -s histappend

# set history parameters
HISTSIZE=10000
HISTFILESIZE=20000
HISTFILE=$HOME/.bash_history
HISTTIMEFORMAT="[%Y-%m-%d %H:%M:%S] "
HISTCONTROL=ignoreboth
HISTIGNORE="ls:ll:la:cd:pwd:exit:clear"

