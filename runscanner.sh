#!/bin/sh
echo "Calling scanner with params: $@"

export CLASSPATH=
for f in lib/*.jar
do
    export CLASSPATH=$f:$CLASSPATH
done

export CLASSPATH=bacnet/bin:$CLASSPATH

java -classpath $CLASSPATH gov.nrel.bacnet.Scan $@
