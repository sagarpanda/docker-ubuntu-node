# sagarpanda/ubuntu-node

A NodeJs Docker image based on Ubuntu.

- Ubuntu `rolling`
- NodeJs `v20.12.1`
- NVM `v0.39.7`

## Usage

```sh
# run container
docker run -it sagarpanda/ubuntu-node
docker run -it --rm sagarpanda/ubuntu-node
```

## Developer Guide

```sh
# build docker image
docker build -t sagarpanda/ubuntu-node .

# build docker image with linux/arm64/v8 platform
docker build -t sagarpanda/ubuntu-node . --platform linux/arm64/v8

# build docker image with no cache
docker build --no-cache -t sagarpanda/ubuntu-node .

# run container and remove when stop
docker run -it --rm sagarpanda/ubuntu-node

# tag docker image | by default tag is latest
docker tag sagarpanda/ubuntu-node sagarpanda/ubuntu-node:1.0.0

# push docker image
# docker login
docker push sagarpanda/ubuntu-node
docker push sagarpanda/ubuntu-node:1.0.0
```

## Multi-platform Docker Images

### Setup Builder

```sh
# displays the default builtin driver
docker buildx ls

# create a new builder
docker buildx create --name mybuilder --bootstrap --use

```

### Build and Publish

```sh
docker buildx build --platform linux/amd64,linux/arm64 -t sagarpanda/ubuntu-node:latest --push .
```
