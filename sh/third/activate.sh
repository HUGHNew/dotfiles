case "$(basename $SHELL)" in
  "bash")
    [ -e /home/linuxbrew/.linuxbrew/bin/brew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
    command -v fzf 2>&1 >/dev/null && source <(fzf --bash)
  ;;
  "zsh")
    [ -e /home/linuxbrew/.linuxbrew/bin/brew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
    command -v fzf 2>&1 >/dev/null && source <(fzf --zsh)
  ;;
  *);;
esac

# eval "$(scmpuff init -s)"
