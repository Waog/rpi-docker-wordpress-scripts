# How to use

Use Linux on your raspberry (I recommend [HypriotOS](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/))

## A full backup cycle looks like this:

1. run a docker container with wordpress: ``./run-rpi-wordpress.sh``
2. do whatever you like with your wordpress (post, update, customize)
3. backup wordpress: ``./run-rpi-wordpress-backup.sh``
  - this creates a ``backup`` folder
4. delete your wordpress container: ``docker stop wordpress && docker rm -v wordpress``
5. create a new wordpress container: ``./create-rpi-wordpress.sh``
6. restore the backup to the new container: ``./run-rpi-wordpress-restore.sh``
7. start the new container: ``docker start wordpress``

# References
The scripts above make use of containers from the following repositories:
- [Wordpress for Docker for Raspberry PI (ARM architecture)](https://github.com/Waog/rpi-docker-wordpress)
- [Backup Wordpress for Docker for Raspberry PI (ARM architecture)](https://github.com/Waog/rpi-docker-wordpress-backup)
- [Restore Backups of Wordpress for Docker for Raspberry PI (ARM architecture)](https://github.com/Waog/rpi-docker-wordpress-restore)
