#!/bin/bash
JAVA_HOME=/Users/steven/app/jdk1.9.0.jdk/Contents/Home
JAVA=$JAVA_HOME/bin/java

$JAVA -modulepath target/mods -m myclient/nl.ordina.myclient.Main

