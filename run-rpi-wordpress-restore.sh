#!/bin/bash
docker run --rm --name wordpress-restore -v $(pwd)/backup:/backup --volumes-from wordpress waog/rpi-wordpress-restore
