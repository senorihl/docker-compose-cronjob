#!/usr/bin/env bash

# Ensure the log file exists
touch /app/logs/crontab.log

# Ensure permission on the command
chmod a+x /app/bin/my-awesome-command

# Added a cronjob in a new crontab
echo "* * * * * /usr/local/bin/node /app/bin/my-awesome-command >> /app/logs/crontab.log 2>&1" > /etc/crontab

# Registering the new crontab
crontab /etc/crontab

# Starting the cron
/usr/sbin/service cron start

# Displaying logs
# Useful when executing docker-compose logs mycron
tail -f /app/logs/crontab.log
