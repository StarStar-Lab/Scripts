#!/bin/sh
set -e

function initSunert() {
    mkdir /Sunert
    cd /Sunert
    git init
    git remote add -f origin https://github.com/Sunert/Scripts.git
    git config core.sparsecheckout true
    echo Task/txnews.js >>/Sunert/.git/info/sparse-checkout
    echo Task/youth.js >>/Sunert/.git/info/sparse-checkout
    echo Task/baidu_speed.js >>/Sunert/.git/info/sparse-checkout
    git pull origin master
}
if [ ! -d "/Sunert/" ]; then
    echo "init Sunert JavaScript" 
    initSunert
else
    echo "update Sunert JavaScript"

    git -C /Sunert  reset --hard
    git -C /custom pull origin master
fi    

cp -f /monk/car/*_*.js /scripts
cp -f /monk/i-chenzhe/*_*.js /scripts
cp -f /monk/member/*_*.js /scripts
cp -f /monk/normal/*_*.js /scripts

## 合并monk&i-chenzhe大师脚本进入crontab列表
cat /monk/i-chenzhe/remote_crontab_list.sh /monk/remote_crontab_list.sh >> /scripts/docker/merged_list_file.sh
