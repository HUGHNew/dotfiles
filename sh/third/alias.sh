function alias-if-exist {
  if command -v "$1" >/dev/null 2>&1; then
    if [[ -n "$3" ]]; then
      alias "$2"="$3"
    else
      alias "$2"="$1"
    fi
  fi
}

###### docker #####
alias yacd="docker run -p 1234:80 -d --name yacd --rm haishanh/yacd:latest"
alias webs="docker run --name hugo -p 8080:80 -v $(pwd)/docs/.vuepress/dist:/usr/share/nginx/html:ro -d nginx:stable-alpine3.17-slim"

###### misc  #####
alias-if-exist exa ls
alias-if-exist podman pm
alias-if-exist zellij z
alias-if-exist batcat bat
alias-if-exist batcat cat 'batcat -p --paging=never'
alias-if-exist numbat calc 'numbat -e'
alias-if-exist proxychains pcs 'proxychains -q'

alias foliate="flatpak run com.github.johnfactotum.Foliate"

