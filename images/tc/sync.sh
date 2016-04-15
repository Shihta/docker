#!/bin/bash -x

DIRS="php/5.6/apache postgres/9.5 redis/3.0"
ORIBASE="docker-library"
if [ -f "/usr/local/opt/gnu-sed/libexec/gnubin/sed" ]; then
    SED="/usr/local/opt/gnu-sed/libexec/gnubin/sed"
else
    SED="sed"
fi

for dir in $DIRS; do
    cp -r ../$ORIBASE/$dir/* ./$dir
    $SED -i 's/debian:jessie/shihta\/base-debian-jessie/g' ./$dir/Dockerfile
    if [ -f "./$dir/Dockerfile.pad" ]; then
        cat "./$dir/Dockerfile.pad" >> "./$dir/Dockerfile"
    fi
done
