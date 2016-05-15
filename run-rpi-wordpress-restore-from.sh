#!/bin/bash
docker run --rm --name wordpress-restore -v $(pwd)/$1:/backup --volumes-from wordpress waog/rpi-wordpress-restore
