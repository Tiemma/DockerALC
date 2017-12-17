FROM node:9.2.1-alpine

RUN rm -rf api/ 

WORKDIR /api

RUN npm install

RUN netstat -lntp

ENTRYPOINT ["npm", "run", "start"]

EXPOSE 3000


