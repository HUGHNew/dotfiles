# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\][\t]\[\033[00m\]\n<\h>:\[\033[01;34m\]\w\[\033[00m\]\$ "