# FROM ubuntu:16.04
FROM node:8
MAINTAINER Lax

# Install cron
RUN apt-get update && apt-get install -y cron

# Add files
ADD test.js /test.js
ADD test1.js /test1.js
ADD entrypoint.sh /entrypoint.sh
 
RUN chmod +x /test.js /test1.js /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]