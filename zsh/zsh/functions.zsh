# proxy enable on Gnome
local proxy_path="/home/$(whoami)/clash"
function set-proxy(){
    export all_proxy="socks://127.0.0.1:7891/"
    export http_proxy="http://127.0.0.1:7890/"
    export https_proxy="http://127.0.0.1:7890/"
    export ALL_PROXY="socks://127.0.0.1:7891/"
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
function start-proxy(){
    gsettings set org.gnome.system.proxy mode 'manual' #ubuntu网络模式配置为手动
    set-proxy && ${proxy_path}/clash -d ${proxy_path}/ &  #在后台执行clash客户端
    echo "start clash successfully!"  #启动成功的提示
}
function stop-proxy(){
    gsettings set org.gnome.system.proxy mode 'auto'
    var=$(ps | grep "clash" | awk '{print $1}')  #抓取clash的进程号
    kill -9 $var && echo "stop clash successfully!"
    $(unset-proxy) && echo "unset all proxy variables"
}
function restart-proxy(){
    stop-proxy
    start-proxy
}
# Make a directory and cd into it
function take {
	mkdir -p $1 || cd $1
}
function bombs {
    to_rm=$(pwd)
    cd .. && rm -rf to_rm
}