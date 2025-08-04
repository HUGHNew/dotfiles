source $HOME/.zsh-plugins/autosuggest/zsh-autosuggestions.zsh
source $HOME/.zsh-plugins/highlight/zsh-syntax-highlighting.zsh
# The following lines were added by compinstall

zstyle ':completion:*' group-name ''
zstyle :compinstall filename $HOME'/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall