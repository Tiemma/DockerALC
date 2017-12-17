FROM mongo

RUN mkdir -p /data/db

EXPOSE 27017

COPY . api/user.js

RUN mongod --fork --logpath /var/log/mongodb.log && sleep 5 

ENTRYPOINT ["mongo"," crud", " api/user.js "]


