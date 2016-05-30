# Pull base image.
FROM buildpack-deps:precise

MAINTAINER xblaster@lo2k.net

#inspired by docker-node officiel
# verify gpg and sha256: http://nodejs.org/dist/v0.10.31/SHASUMS256.txt.asc
# gpg: aka "Timothy J Fontaine (Work) <tj.fontaine@joyent.com>"
# gpg: aka "Julien Gilli <jgilli@fastmail.fm>"
#RUN gpg --keyserver pool.sks-keyservers.net --recv-keys 7937DFD2AB06298B2293C3187D33FF9D0246406D 114F43EE0176B71C7BC219DD50A3051F888C628D

ENV NODE_VERSION 5.11.1

# OLD    line for NPM install     && npm install -g npm@"$NPM_VERSION" \
# OLD     && rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc \
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" \
        && tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
        && npm install -g npm\
        && npm cache clear\
        && apt-get update && apt-get install -y\
        ruby-dev\
        rubygems\ 
        build-essential \
        git

RUN gem install compass && npm install -g bower && npm install -g grunt-cli
