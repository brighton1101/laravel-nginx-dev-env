# Laravel App Generator

## Automatically create a local laravel dev environment

### To access application in browser, go to `localhost`

### Dependencies:
- Ensure you have docker properly installed so you can use `docker-compose` and pull from docker hub.
Installation instructions can be found [here](https://docs.docker.com/install/)

### Example Usage:
0. Make sure you have docker installed
1. Download [this repo] into empty directory where you want to start your project from. Do not clone the repo as you do not want git to track your project as a part of this app generator.
2. Issue the command `make build` to build the containers
3. Issue the command `make up` to start the containers
4. Issue the command `make init` to create the laravel project
5. Go to `localhost` on your machine to ensure that everything is running properly. You should see laravel logo.
6. You should be good to go. Start developing, and if you ever need to stop the containers run the command `make down`

### Commands:
- `make build` : Builds nginx and laravel containers
- `make up` : Starts the containers and runs then in background (docker detached mode)
- `make down` : Stops the containers
- `make init` : Initializes laravel app from inside container. SHOULD ONLY BE RUN ONCE
- `make` : Executes `make down`, `make build`, and `make up`.