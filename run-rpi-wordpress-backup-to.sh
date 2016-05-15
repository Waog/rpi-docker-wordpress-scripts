#!/bin/bash
docker run --rm --name wordpress-backup -v $(pwd)/$1:/backup --volumes-from wordpress waog/rpi-wordpress-backup
