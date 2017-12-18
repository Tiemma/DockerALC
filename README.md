[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# DockerALC

This repository contains a simple setup for a docker image to run an already setup node-mongo web api.

### Requirements
* git
* docker

### Setup

Clone this repo using the following command
```
git clone https://github.com/Tiemma/DockerALC
```

Firstly, you'd need to setup the node app with your env details before starting the docker machine.

Run
```
make deps
```

This will download the api project to the current directory you cloned to .

Do create a .env file for the node app setup with the following format.
This same format is available in the .env.sample file.
```
PORT=3000
DB_URL='mongodb://john:doe@localhost:27017/databaseName'
CONNECT_FLAG=false
```
**NOTE: CONNECT_FLAG must be set to false to enable the database tests run successfully.
DO NOT CHANGE!.
*

Once that's setup, you can cd into the root directory of the project and run make to start the machine

```
make 
```

This will setup the node and mongo images and run them automatically.


## Running the tests

The tests are run using Jasmine which has been installed in the docker machine.

There are two tests and they can be located in the tests folder of the api project once cloned
using the steps outlined above.
 * test_database.js
 * test_server.js
 
**NOTE: The Docker instances must be running before running tests on the machine successfully.
You can run the tests using the make target tests.
* 
```
make tests
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
