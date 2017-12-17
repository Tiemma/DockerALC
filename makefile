
all:  node-setup mongo-setup start

deps: 
	sh requirements.sh

node-setup:
	rm -rf node/api/
	cp -r api/ node/
	docker build -t tiemma/node-api -f node/Dockerfile .

tests: 
	docker exec node-app npm run test

mongo-setup:
	docker run -d --name crud mongo

start:	
	docker run --link crud:crud -p 3000:3000 --name node-app tiemma/node-api


