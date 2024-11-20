#!/bin/bash
export MAVEN_HOME=/opt/apache-maven-3.9.8
export PATH=${PATH}:${JAVA_HOME}/bin:${MAVEN_HOME}/bin

cd maven-samples/single-module

mvn test -Dtest="TestGreeter"