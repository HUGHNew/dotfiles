# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=4096
export HISTFILESIZE=204800
export HISTTIMEFORMAT="%F/%T "
export HISTCONTROL=ignoreboth
export HISTIGNORE="cd:ls:ll:la:exit:clear"