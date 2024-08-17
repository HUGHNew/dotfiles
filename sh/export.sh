# Reset Path (remove game path)
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/app" ] ; then
    export PATH="$HOME/.local/app:$PATH"
fi
