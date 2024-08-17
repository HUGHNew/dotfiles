#!/bin/bash
function set-proxy(){
    export all_proxy="socks5://127.0.0.1:7891/"
    export http_proxy="http://127.0.0.1:7890/"
    export https_proxy="https://127.0.0.1:7890/"
    export ALL_PROXY="socks5://127.0.0.1:7891/"
    export HTTPS_PROXY="https://127.0.0.1:7890/"
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
function git-proxy() {
    git config https.https://github.com.proxy https:/127.0.0.1:7890
    git config http.https://github.com.proxy http:/127.0.0.1:7890
}
function git-unproxy() {
    git config --unset https.https://github.com.proxy
    git config --unset http.https://github.com.proxy
}
# take functions

# mkcd is equivalent to takedir
function takedir() {
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
