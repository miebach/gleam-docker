# gleam-docker

Gleam development quickstart with docker compose.

## Usage

```bash
source upd # start the container in daemon mode
source it # get a shell in the container
```

Now run `gleam` commands in the container:

```bash
cd /app # This is your mounted directory
gleam new --name hello ./hello # create new project 'hello'
cd hello
gleam test
```

## Dockerhub

https://hub.docker.com/repository/docker/miebach/gleam-docker/general

## Example webserver

https://gleam.run/deployment/fly/#prepare-an-application

## Alternative Dockerfile

https://gleam.run/deployment/fly/#add-a-dockerfile
