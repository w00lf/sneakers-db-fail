#! /bin/bash

INSTANCE="$(docker-compose ps | grep 'postgres' | grep 'Exit' | awk '{ print $1 }' | awk -F '_' '{ print $2}' | head -n1)"
[ ${#INSTANCE} = '0' ] && INSTANCE="$(docker-compose ps | grep 'postgres' | awk '{ print $1 }' | awk -F '_' '{ print $2}' | head -n1)"
echo $INSTANCE
docker-compose stop $(docker-compose ps | grep 'postgres' | awk '{ print $1 }' | awk -F '_' '{ print $2}' | paste -sd ' '); docker-compose start $INSTANCE