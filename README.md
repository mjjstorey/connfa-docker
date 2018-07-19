# connfa-docker
Dockerfile for the Connfa Conference System

## Credits

Derived from an original [Gist](https://gist.github.com/evelyne24/dc2a5ae271d26422c3d02783168a6e82), but updated to work with the present version of Conffa.

## How to

### Clone the repo 

`git clone https://github.com/feup-infolab/connfa-docker`

### Go to installation folder

`cd conffa-docker`

### Run the code you need

`./install.sh` -> Builds the docker image, starts it and makes it ready for use at http://localhost
`./reinstall.sh` -> Destroys ALL your docker containers and recreates the connfa container. **CAREFUL IF YOU HAVE OTHER DOCKER CONTAINERS RUNNING!**.
`./destroy_everything_docker.sh` -> Destroys ALL your docker containers and images. Used for debugging purposes mostly when building this image. **CAREFUL IF YOU HAVE OTHER DOCKER CONTAINERS RUNNING!**.
