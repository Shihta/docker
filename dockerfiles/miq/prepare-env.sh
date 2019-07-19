#!/bin/bash

set -x

gem install bundler

npm install -g yarn gulp-cli webpack

/etc/init.d/memcached start

/etc/init.d/postgresql start

su postgres -c "psql -c \"CREATE ROLE root SUPERUSER LOGIN PASSWORD 'smartvm'\""
