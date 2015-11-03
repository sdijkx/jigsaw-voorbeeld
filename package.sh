#!/bin/bash

export JAVA_HOME=/Users/steven/app/jdk1.9.0.jdk/Contents/Home
JMOD=$JAVA_HOME/bin/jmod
JAR=$JAVA_HOME/bin/jar

rm -rf myjmods/*

$JMOD create -mp target/mods --class-path target/mods/myapi myjmods/myapi.jmod
$JMOD create -mp target/mods --class-path target/mods/myprovider myjmods/myprovider.jmod
$JMOD create -mp target/mods --class-path target/mods/myclient myjmods/myclient.jmod

#$JAR -c --archive=mylibs/myapi.jar -C target/mods/myapi .
#$JAR -c --archive=mylibs/myprovider.jar -C target/mods/myprovider .
#$JAR -c --archive=mylibs/myclient.jar -C target/mods/myclient .
