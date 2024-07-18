#!/bin/bash
trap "exit" SIGINT
# 환경 변수로 INTERVAL 설정
# export INTERVAL=1
# env | grep INTERVAL
echo "Configured to generate neew fortune every " $INTERVAL " seconds"
mkdir /var/htdocs
while :
do
    echo $(date) Writing fortune to /var/htdocs/index.html
    /usr/games/fortune  > /var/htdocs/index.html
    sleep $INTERVAL
done

# chmod 755 fortuneloop.sh