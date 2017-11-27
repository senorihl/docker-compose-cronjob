FROM node:8

RUN apt-get update && apt-get install -y cron

ADD . app
WORKDIR app
RUN npm install
EXPOSE 3000

ENTRYPOINT ["npm", "start"]