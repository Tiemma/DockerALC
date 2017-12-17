NODE_DIR=node
MONGO_DIR=mongo
NODE_VERSION=9.2.1-alpine
MONGO_VERSION=latest

all: deps mongo-setup node-setup

deps: 
	sh requirements.sh $(NODE_DIR) $(MONGO_DIR)

node-setup:
	docker run -it --name node -v ~/Docker:/data --link mongo:mongo -w /data/api -p 3000:3000  node npm {install,"run start"} 

mongo-setup:
	docker run -it -v ~/Docker:/data --name mongo  mongo -p 27017:27017 -w data/api {"mongod --bind_ip_all &","mongo user.js crud"}


