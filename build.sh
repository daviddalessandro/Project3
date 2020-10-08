#!/bin/bash

mkdir bin

javac ./src/main/*.java -d bin
javac ./src/test/*.java -cp bin:lib/junit-platform-console-standalone-1.7.0.jar -d bin

java -jar lib/junit-platform-console-standalone-1.7.0.jar --cp "./bin" --scan-classpath