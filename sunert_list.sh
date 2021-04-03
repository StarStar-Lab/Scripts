*/15 * * * * sleep \$((RANDOM % 120)); node /scripts/youth.js |ts >> /scripts/logs/youth.log 2>&1
*/7 * * * * sleep \$((RANDOM % 120)); node /scripts/txnews.js |ts >> /scripts/logs/txnews.log 2>&1
10 7-22 * * * sleep \$((RANDOM % 120)); node /scripts/baidu_speed.js >> /scripts/logs/baidu_speed.log 2>&1
0 6 * * * node /scripts/baidu_speed.js >> /scripts/logs/baidu_speed.log 2>&1
