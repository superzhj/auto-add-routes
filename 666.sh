#!/bin/bash
[[ $EUID -ne 0 ]] && yellow "请以root模式运行脚本" && exit
bit=`uname -m`
if [[ $bit = aarch64 ]]; then
./
elif [[ $bit = x86_64 ]]; then
./
else
red "目前脚本不支持$bit架构" && exit
fi





