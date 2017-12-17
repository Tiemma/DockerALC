[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# DockerALC

This repository contains a simple setup for a docker image to run an already setup node-mongo web api.

###Requirements
* git
* docker

###Setup

Firstly, you'd need to setup the node app with your env details before starting the docker machine.

Run
```
make deps
```

This will download the image to your ~/Docker directory and cd into it 
Then download the api folder for easy setup.

Enter the api folder and create a .env file for the node app setup with the following format.
This same format is available in the .env.sample file.
```
PORT=3000
DB_URL='mongodb://john:doe@localhost:27017/databaseName'
CONNECT_FLAG=false
```
*NOTE: CONNECT_FLAG must be set to false to enable the database tests run.
*DO NOT CHANGE!.

Once that setup, you can cd into the ~/Docker directory and run make to start the machine

```
make 
```

This will setup the node and mongo images and run them automatically.

