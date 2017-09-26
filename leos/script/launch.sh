#!/bin/bash
echo "launching inmedb"
#export MAVEN_OPTS='-Djdk.http.auth.tunneling.disabledSchemes= -Djdk.https.auth.tunneling.disabledSchemes= -Dhttps.proxyHost=10.10.4.53 -Dhttps.proxyPort=8080 -Dhttps.proxyUser="proxy_framework_dev" -Dhttps.proxyPassword="vMfcb2C2012" -Dhttp.proxyHost=proxyha.curia.europa.eu -Dhttp.proxyPort=8080 -Dhttp.proxyUser="proxy_framework_dev" -Dhttp.proxyPassword="vMfcb2C2012"'

#export MAVEN_OPTS="-Dmaven.repo.remote=http://curia-lib/artifactory/"


cd /src/modules/model && mvn clean install

cd /src/ && mvn install
cd /src/modules && mvn install

cd /src/tools/database-h2 &&  mvn inmemdb:run&

echo "launching chemistry-opencmis-server-inmemory"
cd /src/tools/cmis/chemistry-opencmis-server-inmemory && mvn jetty:run-war&

echo "launching leos"
cd /src/modules/web-os && mvn  jetty:run-war
