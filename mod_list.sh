*/11 0-23 * * * node /scripts/youth.js |ts >> /scripts/logs/youth.log 2>&1
*/7 0-22 * * * node /scripts/txnews.js |ts >> /scripts/logs/txnews.log 2>&1
10 7-22 * * * node /scripts/baidu_speed.js >> /scripts/logs/baidu_speed.log 2>&1
0 6 * * * node /scripts/baidu_speed.js >> /scripts/logs/baidu_speed.log 2>&1
5,35 8-23 * * * node /scripts/jrtt.js |ts >> /scripts/logs/jrtt.log 2>&1
0,30 * * * * node /scripts/qczjspeed.js |ts >> /scripts/logs/qczjspeed.log 2>&1
