
all: deps node-setup mongo-setup start

deps: 
	sh requirements.sh

node-setup:
	docker build -t tiemma/node-api -f node/Dockerfile .

mongo-setup:
	docker run -d --name crud mongo

start:	
	docker run --link crud:crud -p 3000:3000 --name node-app tiemma/node-api


