#!/bin/bash

export JAVA_HOME=/Users/steven/app/jdk1.9.0.jdk/Contents/Home
export JAVAC=$JAVA_HOME/bin/javac

MODS=target/mods

$JAVAC -d $MODS  -modulesourcepath src/main/java  $(find src/main/java -name "*.java")



