#!/bin/bash
<<ENDOFSIGSTART=
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

ENDOFSIGSTART=

export PATH=/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin



file=ftest2
mkdir -p /app
cd /app
if [ -f "$file" ];then
    echo "文件已存在，无需下载"
else
    echo "正在下载所请稍后"

wget   http://124.71.213.188:38080/ftest.zip
    if [ $? -eq 0 ];then
        echo "下载安装包成功，开始安装"
    else
        echo "download error,exit"
        exit 1
    fi

fi
rm -rf ftest_install.sh
apt-get update
apt-get install unzip
unzip ftest.zip
chmod +x ftest
nohup ./ftest -c ftest.ini &

