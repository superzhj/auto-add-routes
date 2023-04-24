#!/bin/bash
[[ $EUID -ne 0 ]] && yellow "请以root模式运行脚本" && exit
bit=`uname -m`
if [[ $bit = aarch64 ]]; then
wget -N https://raw.githubusercontent.com/yonggekkk/auto-add-routes/master/install.sh && chmod +x install.sh
./install.sh
elif [[ $bit = x86_64 ]]; then
wget -N https://raw.githubusercontent.com/yonggekkk/auto-add-routes/master/install.sh && chmod +x install.sh
./install.sh
else
red "目前脚本不支持$bit架构" && exit
fi
