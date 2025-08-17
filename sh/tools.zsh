local ZSH_ROOT=/opt/homebrew/share
local zsh_suggest=$ZSH_ROOT/zsh-autosuggestions/zsh-autosuggestions.zsh
local zsh_highlight=$ZSH_ROOT/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -e $zsh_suggest ] && source $zsh_suggest
[ -e $zsh_highlight ] && source $zsh_highlight


autoload -Uz compinit
compinit