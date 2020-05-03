#!/usr/bin/env bash
sed -i 's;#server.port: 5601;server.port: 5601;' /etc/kibana/kibana.yml && \
( IP=$(ifconfig eth0 | grep inet | sed -E 's;\s{1,}; ;' | cut -d" " -f 3) && sed -i "s;#server.host: \"localhost\";server.host: \"$IP\";" /etc/kibana/kibana.yml )
