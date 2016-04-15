#/bin/sh

echo "*** max_connections"

sed -i -e 's/^max_connections = [1-9][0-9]\+/max_connections = 200/' /var/lib/postgresql/data/postgresql.conf
sed -i -e 's/#logging_collector = off/logging_collector = on/g' /var/lib/postgresql/data/postgresql.conf
sed -i -e "s/#log_line_prefix = ''/log_line_prefix = '%t '/g" /var/lib/postgresql/data/postgresql.conf

