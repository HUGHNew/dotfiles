# ~/.bashrc: executed by bash(1) for non-login shells.
case $- in
    *i*) ;;
      *) return;;
esac


for script in $(ls $HOME/.sh/*.{sh,zsh});do
    source $script
done
