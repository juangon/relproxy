#!/bin/sh

RELPROXY_JAR=relproxy-0.8.jar

PROJECT=`dirname $0`/..

if [ -z "$JAVA_HOME" ]; then 
    echo Missing JAVA_HOME environment variable, exiting...
    exit 1
fi

export PATH=$PATH:$PROJECT/bin
export CLASSPATH=$PROJECT/lib/$RELPROXY_JAR
export JAVA_OPTS="-client -Xmx100m"
# Nothing really required in JAVA_OPTS, just to test

export JPROXYSH_COMPILATION_OPTIONS="-source 1.6 -target 1.6"

jproxysh   
