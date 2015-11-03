#!/bin/bash
export JAVA_HOME=/Users/steven/app/jdk1.9.0.jdk/Contents/Home
JAVA=$JAVA_HOME/bin/java

$JAVA -modulepath target/mods -m myclient/myclient.Main
#$JAVA -mp mylibs -m myclient/myclient.Main
