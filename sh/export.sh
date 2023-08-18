###### PATH #######
#export PATH=$HOME/flutter/bin:$PATH
#export PATH=$HOME/JetBrains/Toolbox/scripts:$PATH
###################


PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/app" ] ; then
    export PATH="$HOME/.local/app:$PATH"
fi


#### RUST #######
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
#### Flutter ####
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
#################
