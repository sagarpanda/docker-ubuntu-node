FROM ubuntu:rolling

RUN apt-get update -y
RUN apt-get install -y curl

SHELL ["/bin/bash", "-c"]

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
RUN source /root/.bashrc

RUN bash -c ". /root/.nvm/nvm.sh && nvm install 20 && nvm alias default node"
