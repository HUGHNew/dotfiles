# ~/.bashrc: executed by bash(1) for non-login shells.
case $- in
    *i*) ;;
      *) return;;
esac

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

setopt NULL_GLOB
# fpath=(~/.sh/completions $fpath)

for ext in sh zsh;do
    for script in $HOME/.sh/*.${ext};do
        [ -f $script ] && source $script
    done
done

