#!/bin/bash

export JAVA_HOME=/Users/steven/app/jdk1.9.0.jdk/Contents/Home
JLINK=$JAVA_HOME/bin/jlink

rm -rf target/executable/*
$JLINK --modulepath $JAVA_HOME/jmods:myjmods --addmods myclient --output target/executable
