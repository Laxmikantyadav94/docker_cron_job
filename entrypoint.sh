#!/bin/bash
# Setup a cron schedule
echo "* * * * * /usr/local/bin/node /test.js >> /var/log/cron.log 2>&1
* * * * * /usr/local/bin/node /test1.js >> /var/log/cron.log 2>&1
# This extra line makes it a valid cron" > scheduler.txt


crontab scheduler.txt
cron -f