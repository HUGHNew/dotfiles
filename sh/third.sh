# .sh, the common scripts first
THIRD_PARTY_DIR=$(dirname $0)/third
#[ -e $THIRD_PARTY_DIR ] || return
if [[ $0 == "bash" ]];then
    THIRD_PARTY_DIR="$HOME/.sh/third"
    SHELL=bash # for bash usage from other shells
fi

case "$(basename $SHELL)" in
  "sh"|"dash"|"rbash");;
  "bash")
    ext="bash"
  ;;
  "zsh")
    ext="zsh"
  ;;
  *)
    echo "unsupported shell: $SHELL"
  ;;
esac

[ -z "$ext" ] && exit

# shell-specific scripts last
for et in sh $ext;do
    for script in $THIRD_PARTY_DIR/*.${et};do
        [ -f $script ] && source $script
    done
done

