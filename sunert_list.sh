*/15 * * * * sleep \$((RANDOM % 120)); node /scripts/youth.js |ts >> /logs/youth.log 2>&1
*/7 * * * * sleep \$((RANDOM % 120)); node /scripts/txnews.js |ts >> /logs/txnews.log 2>&1
10 7-22 * * * sleep \$((RANDOM % 120)); node /scripts/baidu_speed.js >> /logs/baidu_speed.log 2>&1
