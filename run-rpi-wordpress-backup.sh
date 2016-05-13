#!/bin/bash
docker run --rm --name wordpress-backup -v $(pwd)/backup:/backup --volumes-from wordpress waog/rpi-wordpress-backup
