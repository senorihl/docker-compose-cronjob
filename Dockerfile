FROM node:8

ADD . /var/www/myapp
WORKDIR /var/www/myapp
RUN rm -rf node_modules package-lock.json
RUN npm install
EXPOSE 3000

ENTRYPOINT ["npm", "start"]