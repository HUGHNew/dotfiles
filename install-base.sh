echo "Run termux-change-repo first to change source"
# vim git wget
pkg update
pkg install -y vim git python bat zsh

# zsh
[ -e $HOME/.zsh-plugins ] || mkdir $HOME/.zsh-plugins
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.zsh-plugins/highlight
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh-plugins/autosuggest
