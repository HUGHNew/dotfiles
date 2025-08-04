###### PATH #######
[ -e ~/.local/bin ] && _EP=$_EP:~/.local/bin
[ -e /usr/local/cuda ] && _EP=$_EP:/usr/local/cuda/bin

export PATH=$_EP:$PATH
###################

#### RUST #######
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
#### Flutter ####
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
#################

