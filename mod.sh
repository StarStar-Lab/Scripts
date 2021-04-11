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
    git -C /Sunert  pull origin master
fi    

cp -f /Sunert/Task/*.js /scripts

echo "merge custom crontab"
cd /scripts/docker
wget -O mod_list.sh https://raw.githubusercontent.com/StarStar-Lab/Scripts/main/mod_list.sh
cat /scripts/docker/mod_list.sh >> /scripts/docker/merged_list_file.sh

echo "get single scripts"
cd /scripts/logs
wget -O jrtt.js https://raw.githubusercontent.com/ZhiYi-N/Private-Script/master/Scripts/jrtt.js
wget -O qczjspeed.js https://cdn.jsdelivr.net/gh/ziye888/JavaScript@main/Task/qczjspeed.js
cp -f /scripts/logs/*.js /scripts
echo "done"
