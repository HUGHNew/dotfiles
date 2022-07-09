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