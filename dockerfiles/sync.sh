#!/bin/bash -x

#DIRS="php/5.6/apache redis/3.2 mariadb/10.1 docker-nginx/stable/jessie python/2.7 docker-selenium/StandaloneChrome"
DIRS="python/2.7"
ORIBASE="libraries"
if [ -f "/usr/local/opt/gnu-sed/libexec/gnubin/sed" ]; then
    SED="/usr/local/opt/gnu-sed/libexec/gnubin/sed"
else
    SED="sed"
fi

#cd ../$ORIBASE/docker-selenium && make generate_standalone_chrome && cd -

for dir in $DIRS; do
    cp -r ../$ORIBASE/$dir/* ./$dir
    $SED -i 's/debian:jessie/shihta\/buildpack-deps-jessie/g' ./$dir/Dockerfile
    $SED -i 's/buildpack-deps:jessie/shihta\/buildpack-deps-jessie/g' ./$dir/Dockerfile
    if [ -f "./$dir/Dockerfile.pad" ]; then
        cat "./$dir/Dockerfile.pad" >> "./$dir/Dockerfile"
    fi
done
