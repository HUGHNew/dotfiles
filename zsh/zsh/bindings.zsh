# Make sure arrow key works.
case "${TERM}" in
  cons25*|linux) # plain BSD/Linux console
    bindkey '\e[H'    beginning-of-line   # home
    bindkey '\e[F'    end-of-line         # end
    bindkey '\e[5~'   delete-char         # delete
    bindkey '[D'      emacs-backward-word # esc left
    bindkey '[C'      emacs-forward-word  # esc right
    ;;
  *rxvt*) # rxvt derivatives
    bindkey '\e[3~'   delete-char         # delete
    bindkey '\eOc'    forward-word        # ctrl right
    bindkey '\eOd'    backward-word       # ctrl left
    # workaround for screen + urxvt
    bindkey '\e[7~'   beginning-of-line   # home
    bindkey '\e[8~'   end-of-line         # end
    bindkey '^[[1~'   beginning-of-line   # home
    bindkey '^[[4~'   end-of-line         # end
    ;;
  *xterm*) # xterm derivatives
    bindkey '\e[H'    beginning-of-line   # home
    bindkey '\e[F'    end-of-line         # end
    bindkey '\e[3~'   delete-char         # delete
    bindkey '\e[1;5C' forward-word        # ctrl right
    bindkey '\e[1;5D' backward-word       # ctrl left
    # workaround for screen + xterm
    bindkey '\e[1~'   beginning-of-line   # home
    bindkey '\e[4~'   end-of-line         # end
    ;;
  screen)
    bindkey '^[[1~'   beginning-of-line   # home
    bindkey '^[[4~'   end-of-line         # end
    bindkey '\e[3~'   delete-char         # delete
    bindkey '\eOc'    forward-word        # ctrl right
    bindkey '\eOd'    backward-word       # ctrl left
    bindkey '^[[1;5C' forward-word        # ctrl right
    bindkey '^[[1;5D' backward-word       # ctrl left
    ;;
esac

# bind Up/Down Arrow

bindkey '^[OA' history-beginning-search-backward # fuzzy find history forward
bindkey '^[OB' history-beginning-search-forward  # fuzzy find history backward


# command-line() {
#       [[ -z $BUFFER ]] && zle up-history
#       if [[ $BUFFER == $1\ * ]]; then
#             LBUFFER="${LBUFFER#$1 }"
#       else
#             LBUFFER="$1 $LBUFFER"
#       fi
# }
# sudo

bindkey "\e\e" sudo-command-line                  # [Esc] [Esc] - insert "sudo" at beginning of line
  zle -N sudo-command-line
  sudo-command-line() {
        [[ -z $BUFFER ]] && zle up-history
        if [[ $BUFFER == sudo\ * ]]; then
              LBUFFER="${LBUFFER#sudo }"
        else
              LBUFFER="sudo $LBUFFER"
        fi
  }
# proxychains
bindkey "^\e" proxychains-command-line                  # [Ctrl] [Esc] - insert "proxychains" at beginning of line
  zle -N proxychains-command-line
  proxychains-command-line() {
        [[ -z $BUFFER ]] && zle up-history
        if [[ $BUFFER == proxychains\ * ]]; then
              LBUFFER="${LBUFFER#proxychains }"
        else
              LBUFFER="proxychains $LBUFFER"
        fi
  }