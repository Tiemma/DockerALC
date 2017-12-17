FROM node:9.2.1-alpine

COPY . .

WORKDIR api/

RUN npm install

ENTRYPOINT ["npm", "run", "start"]

EXPOSE 3000


