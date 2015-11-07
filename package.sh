#!/bin/bash

JAVA_HOME=/Users/steven/app/jdk1.9.0.jdk/Contents/Home
JMOD=$JAVA_HOME/bin/jmod
JAR=$JAVA_HOME/bin/jar

rm -rf myjmods/*

$JMOD create -mp target/mods --class-path target/mods/myapi.internal myjmods/myapi.internal.jmod
$JMOD create -mp target/mods --class-path target/mods/myapi myjmods/myapi.jmod
$JMOD create -mp target/mods --class-path target/mods/myclient myjmods/myclient.jmod

echo
echo "Mods created:"
ls -1 myjmods/*
echo

rm -rf mylibs/*

$JAR -c --archive=mylibs/myapi.internal.jar -C target/mods/myapi.internal .
$JAR -c --archive=mylibs/myapi.jar -C target/mods/myapi .
$JAR -c --archive=mylibs/myclient.jar -C target/mods/myclient .

echo
echo "Jars created:"
ls -1 mylibs/*
echo
