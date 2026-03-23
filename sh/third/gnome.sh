gnome-shell-title () {
    echo -ne "\033]0;$1\007"
}
# proxy enable on Gnome
proxy_path="$HOME/clash"
function gnome-manual() {
    gsettings set org.gnome.system.proxy mode 'manual' # gnome proxy method manual|auto|none
    gsettings set org.gnome.system.proxy.http host localhost
    gsettings set org.gnome.system.proxy.http port 7890
    gsettings set org.gnome.system.proxy.https host localhost
    gsettings set org.gnome.system.proxy.https port 7890
    gsettings set org.gnome.system.proxy.socks host localhost
    gsettings set org.gnome.system.proxy.socks port 7891

}
# network mode
# manual|auto|none
function start-proxy(){
    gnome-manual
    env-proxy && ${proxy_path}/clash -d ${proxy_path}/ &
    echo "start clash successfully!"
}
function stop-proxy(){
    gsettings set org.gnome.system.proxy mode 'none' # disable
    pgrep clash|xargs kill && echo "stop clash now"
    # kill -9 $var && echo "stop clash successfully!"
    env-unproxy && echo "unset all proxy variables"
}
function restart-proxy(){
    env-unproxy
    env-proxy
}