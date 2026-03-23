# Reset Path (remove game path)
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

function path_more() {
    target_path="$1"
    local_flag=$(dirname "$HOME")

    [ -z "$target_path" ] && return 1
    [ ! -d "$target_path" ] && return 1
    [[ ":$PATH:" == *":$target_path:"* ]] && return 0

    if [[ "$target_path" == "$local_flag"* ]]; then
        export PATH="$target_path:$PATH" # preppend
    else
        export PATH="$PATH:$target_path" # append
    fi
}

# set PATH so it includes user's private bin if it exists
path_more "$HOME/.local/app"
path_more "$HOME/.local/bin"
path_more "/usr/local/cuda/bin"
