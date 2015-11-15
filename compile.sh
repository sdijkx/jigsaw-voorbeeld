#!/bin/bash

JAVA_HOME=/Users/steven/app/jdk1.9.0.jdk/Contents/Home
JAVAC=$JAVA_HOME/bin/javac

MODS=target/mods

rm -rf $MODS
mkdir $MODS

$JAVAC -d $MODS  -modulesourcepath src/main/java\
  $(find src/main/java -name "*.java")

echo "Compiled files"
tree $MODS
