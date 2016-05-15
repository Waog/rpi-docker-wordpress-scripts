#!/bin/bash -x

#destroy existing wordpress container
docker stop wordpress
docker rm -v wordpress

#create and restore new wp container
./create-rpi-wordpress.sh
./run-rpi-wordpress-restore-from.sh $1
docker start wordpress

