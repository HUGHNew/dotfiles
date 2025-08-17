function _debian () {
	if [ -e /etc/apt/sources.list.d/debian.sources ]; then
		# DEB822
		sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
	else
		sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
	fi
}

function _python () {
	pip install -i https://mirrors.ustc.edu.cn/pypi/simple package
	[ -e $HOME/.config/uv/uv.toml ] || mkdir -p $HOME/.config/uv
	echo '[[index]]\nurl = "https://mirrors.ustc.edu.cn/pypi/simple"\ndefault = true' >> $HOME/.config/uv/uv.toml
}

function _npm () {
	npm config set registry https://npmreg.proxy.ustclug.org/
}
