case "$(basename $SHELL)" in
  "bash")
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
    source <(fzf --bash)
  ;;
  "zsh")
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
    source <(fzf --zsh)
  ;;
  *);;
esac

# eval "$(scmpuff init -s)"