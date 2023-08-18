###### docker #####
alias yacd="docker run -p 1234:80 -d --name yacd --rm haishanh/yacd:latest"
alias webs="docker run --name hugo -p 8080:80 -v $(pwd)/docs/.vuepress/dist:/usr/share/nginx/html:ro -d nginx:stable-alpine3.17-slim"