FROM node:8

ADD . app
WORKDIR app
RUN npm install
EXPOSE 3000

RUN apt-get update && apt-get install -y cron
RUN echo '* * * * * cd /app && .bin/my-awesome-command > /app/logs/crontab.log 2>&1' > /etc/crontab
RUN crontab /etc/crontab

ENTRYPOINT ["npm", "start"]