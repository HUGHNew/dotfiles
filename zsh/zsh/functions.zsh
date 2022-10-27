# proxy enable on Gnome
local proxy_path="/home/$(whoami)/clash"
function set-proxy(){
    export all_proxy="socks5://127.0.0.1:7891/"
    export http_proxy="http://127.0.0.1:7890/"
    export https_proxy="http://127.0.0.1:7890/"
    export ALL_PROXY="socks5://127.0.0.1:7891/"
    export HTTPS_PROXY="http://127.0.0.1:7890/"
    export HTTP_PROXY="http://127.0.0.1:7890/"
}
function unset-proxy(){
    unset all_proxy
    unset http_proxy
    unset https_proxy
    unset ALL_PROXY
    unset HTTPS_PROXY
    unset HTTP_PROXY
}
# network mode
# manual|auto|none
function start-proxy(){
    gsettings set org.gnome.system.proxy mode 'manual' #ubuntu网络模式配置为手动
    set-proxy && ${proxy_path}/clash -d ${proxy_path}/ &  #在后台执行clash客户端
    echo "start clash successfully!"  #启动成功的提示
}
function stop-proxy(){
    gsettings set org.gnome.system.proxy mode 'none' # disable
    var=$(ps | grep "clash" | awk '{print $1}'|xargs)  #抓取clash的进程号
    # var=$(ps -ef| grep -v grep |grep -m1 $proxy_path/clash | awk '{print $2}')  #抓取clash的进程号
    kill -9 $var && echo "stop clash successfully!"
    unset-proxy && echo "unset all proxy variables"
}
function restart-proxy(){
    stop-proxy
    start-proxy
}
# take functions

# mkcd is equivalent to takedir
function mkcd takedir() {
  mkdir -p $@ && cd ${@:$#}
}

function takeurl() {
  local data thedir
  data="$(mktemp)"
  curl -L "$1" > "$data"
  tar xf "$data"
  thedir="$(tar tf "$data" | head -n 1)"
  rm "$data"
  cd "$thedir"
}

function takegit() {
  git clone "$1"
  cd "$(basename ${1%%.git})"
}

function take() {
  if [[ $1 =~ ^(https?|ftp).*\.tar\.(gz|bz2|xz)$ ]]; then
    takeurl "$1"
  elif [[ $1 =~ ^([A-Za-z0-9]\+@|https?|git|ssh|ftps?|rsync).*\.git/?$ ]]; then
    takegit "$1"
  else
    takedir "$@"
  fi
}
function bombs {
    to_rm=$(pwd)
    cd .. && rm -rf $to_rm
}
function Typora {
    touch $1 && typora $1
}

#############
# bat & fzf #
#############

function batdiff() {
  git diff --name-only --diff-filter=d | xargs bat --diff
}
function preview(){
  fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'
}

function biff() {
  diff $@|bat -l diff
}