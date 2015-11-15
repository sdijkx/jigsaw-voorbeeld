#!/bin/bash

JAVA_HOME=/Users/steven/app/jdk1.9.0.jdk-b85/Contents/Home
JLINK=$JAVA_HOME/bin/jlink
LIMITMODS=java.base,java.logging,myapi,myapi.formatter,myclient
TARGET=target/executable

rm -rf target/executable/*
$JLINK --modulepath $JAVA_HOME/jmods:myjmods --limitmods $LIMITMODS --addmods myclient --output $TARGET

echo
echo "Compare imagesize to jdk:"
echo "IMAGE:" $(du -h -c $TARGET | tail -n 1)
echo "JDK:" $(du -h -c $JAVA_HOME | tail -n 1)
echo
echo "Modules in image:"
$TARGET/bin/java -listmods
