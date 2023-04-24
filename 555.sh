#!/bin/bash
[[ $EUID -ne 0 ]] && yellow "请以root模式运行脚本" && exit
bit=`uname -m`
if [[ $bit = aarch64 ]]; then
echo y
elif [[ $bit = x86_64 ]]; then
wget -N https://github.com/yonggekkk/Xray-core/raw/main/install.sh && chmod +x install.sh
./install.sh
else
red "目前脚本不支持$bit架构" && exit
fi