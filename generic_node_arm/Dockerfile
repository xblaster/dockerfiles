# Pull base image.
FROM armbuild/ubuntu:latest

MAINTAINER xblaster@lo2k.net

RUN apt-get update && apt-get install -y \
  ruby-dev \
  build-essential \
  git

# Install Node.js
RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/node-latest.tar.gz && \
  tar xvzf node-latest.tar.gz && \
  rm -f node-latest.tar.gz && \
  cd node-v* && \
  ./configure && \
  CXX="g++ -Wno-unused-local-typedefs" make && \
  CXX="g++ -Wno-unused-local-typedefs" make install && \
  cd /tmp && \
  rm -rf /tmp/node-v* && \
  npm install -g npm && \
  printf '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc

RUN apt-get install -y rubygems

RUN gem install compass

RUN npm install -g bower
RUN npm install -g grunt-cli
