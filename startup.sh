#!/bin/bash
set -e

# Display usage information
usage() {
    echo "Usage: $0 [copy|link]"
    echo "  copy - Copy files (default)"
    echo "  link - Create hardlinks (softlink for dir)"
    exit 1
}

# Check if mode is provided
if [ $# -eq 0 ]; then
    mode="copy"
elif [ $# -eq 1 ]; then
    mode="$1"
else
    usage
fi

repo=$(dirname $0)

# Set commands based on mode
case $mode in
    copy)
        cmd_file="cp"
        cmd_dir="cp -r"
        ;;
    link)
        cmd_file="ln"
        cmd_dir="ln -s"
        ;;
    *)
        echo "Error: Invalid mode '$mode'"
        usage
        ;;
esac

echo "Running in $mode mode..."

############################
###### shell config ########
$cmd_dir $repo/sh ~/.sh
$cmd_file $repo/zshrc ~/.zshrc

###### git config ##########
$cmd_file $repo/gitconfig ~/.gitconfig

############ vim ###########
$cmd_file $repo/vimrc ~/.vimrc

##### claude code ##########
[ -d ~/.claude ] || mkdir ~/.claude
$cmd_file claude/user.settings.json ~/.claude/settings.json
$cmd_file claude/project.settings.json ~/.claude/settings.project.json
$cmd_file claude/statusline.py ~/.claude/statusline
$cmd_file claude/startup.sh ~/.claude/claude.startup