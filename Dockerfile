FROM ubuntu:18.04 

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN apt-get update -qq
RUN apt-get install -y python3.7 python3-pip curl
RUN pip3 install awscli aws-sam-cli

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g yarn
