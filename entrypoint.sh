#!/bin/bash

set -e

# Insert placeholder entry for initialAdmins
cp ./conf/datawolf.properties ./conf/datawolf.properties.bak
cat ./conf/datawolf.properties.bak | sed -e s#initialAdmins=".*"#initialAdmins="${INITIAL_ADMINS}"# >> ./conf/datawolf.properties

# Start DataWolf 4.1.0
./bin/datawolf-service
