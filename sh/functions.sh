#!/bin/bash

PROXY_HOST=127.0.0.1

function env-proxy(){
    export all_proxy="socks5://$PROXY_HOST:7891/"
    export http_proxy="http://$PROXY_HOST:7890/"
    export https_proxy="https://$PROXY_HOST:7890/"
    export no_proxy="localhost,127.0.0.1/8,::1,*.cn,bilibili.com"
    export ALL_PROXY=$all_proxy
    export HTTPS_PROXY=$https_proxy
    export HTTP_PROXY=$http_proxy
    export NO_PROXY=$no_proxy
}
function env-unproxy(){
    unset all_proxy
    unset http_proxy
    unset https_proxy
    unset ALL_PROXY
    unset HTTPS_PROXY
    unset HTTP_PROXY
}
function git-proxy() {
    git config --global https.https://github.com.proxy https://$PROXY_HOST:7890
    git config --global http.https://github.com.proxy http://$PROXY_HOST:7890
}
function git-unproxy() {
    git config --unset --global https.https://github.com.proxy
    git config --unset --global http.https://github.com.proxy
}


function set-proxy() {
  env-proxy && git-proxy
}
function unset-proxy() {
  env-unproxy && git-unproxy
}


function pc() {
  set-proxy
  if command -v proxychains 2>/dev/null; then
    prefix=(proxychains -q)
  elif command -v proxychains4 2>/dev/null; then
    prefix=(proxychains4 -q)
  else
    prefix=()
  fi

  "${prefix[@]}" "$@"
  unset-proxy
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
