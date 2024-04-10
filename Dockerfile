# set the base image to Ubuntu
FROM ubuntu:rolling

# update the repository sources list
# and install dependencies
RUN apt-get update -y
RUN apt-get install -y curl

# nvm environment variables
ENV NODE_VERSION 20.12.1
ENV NVM_DIR /root/.nvm

# install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# add node and npm to path so the commands are available
ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# install node and npm
RUN echo "source $NVM_DIR/nvm.sh && \
    nvm install $NODE_VERSION && \
    nvm alias default $NODE_VERSION && \
    nvm use default" | bash

# install yarn
RUN echo "npm install -g yarn" | bash

# confirm installation
RUN echo "node -v" | bash
