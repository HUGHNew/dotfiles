source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# The following lines were added by compinstall

zstyle ':completion:*' group-name ''
zstyle :compinstall filename $HOME'/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall