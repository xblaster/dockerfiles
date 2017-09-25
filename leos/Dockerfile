FROM maven:3-jdk-8

RUN mkdir /conf
#COPY settings.xml /conf/

ADD leos-prototype_3.1.0-snapshot /src/


RUN cd /src/tools/database-h2 && mvn clean install 
RUN cd /src/tools/cmis/chemistry-opencmis-server-inmemory && mvn clean install
RUN cd /src && mvn clean install

VOLUME /src/
