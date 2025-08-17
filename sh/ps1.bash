# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

export PROMPT_COMMAND='echo -e $(date +"[%m/%d|\033[01;32m%H:%M:%S\033[0m]")'
export PS1="${debian_chroot:+($debian_chroot)}\033[01;34m\]\w\[\033[00m \$ " 