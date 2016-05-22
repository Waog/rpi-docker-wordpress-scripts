#!/bin/bash -x

#destroy existing wordpress container
docker stop wordpress
docker rm -v wordpress

#create and restore new wp container
SCRIPT_PATH="`dirname \"$0\"`"
$SCRIPT_PATH/create-rpi-wordpress.sh
$SCRIPT_PATH/run-rpi-wordpress-restore-from.sh $1
docker start wordpress
