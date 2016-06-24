# Pull base image.
FROM node:5
MAINTAINER xblaster@lo2k.net

RUN apt-get update && apt-get install -y\
        ruby-dev\
        rubygems\
        build-essential \
        git

RUN gem install compass && npm install -g bower && npm install -g grunt-cli
