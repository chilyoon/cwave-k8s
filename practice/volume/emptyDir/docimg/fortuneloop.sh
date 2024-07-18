#!/bin/bash
trap "exit" SIGINT
# 디렉토리를 만든다.
mkdir /var/htdocs
# fortune -> 명언을 찍어줌 10초마다 index.html에 명언이 바귄다.
while :
do
    echo $(date) Writing fortune to /var/htdocs/index.html
    /usr/games/fortune  > /var/htdocs/index.html
    sleep 10
done