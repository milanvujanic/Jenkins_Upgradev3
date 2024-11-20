#!/bin/bash
export MAVEN_HOME=/opt/apache-maven-3.9.8
export PATH=${PATH}:${JAVA_HOME}/bin:${MAVEN_HOME}/bin

mvn clean install