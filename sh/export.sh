###### PATH #######
function path_more() {
    local target_path="$1"
    local local_flag=$(dirname "$HOME")

    [ -z "$target_path" ] && return 1
    [ ! -d "$target_path" ] && return 1
    [[ ":$PATH:" == *":$target_path:"* ]] && return 0

    if [[ "$target_path" == "$local_flag"* ]]; then
        export PATH="$target_path:$PATH" # preppend
    else
        export PATH="$PATH:$target_path" # append
    fi
}

path_more $HOME/.local/bin
###################

#### RUST #######
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
#### Flutter ####
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
#################


### HomeBrew ###
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
# export HOMEBREW_CACHE=
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_BAT=1


#### Claude Code ####
export API_TIMEOUT_MS=600000
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1
export DISABLE_INSTALLATION_CHECKS=1

export GEMINI_TELEMETRY_ENABLED=false
export TLDR_AUTO_UPDATE_DISABLED=false
