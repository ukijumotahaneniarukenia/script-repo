#!/usr/bin/env bash
MX_USER_ID=$(cat /etc/passwd | grep -Po '[0-9]+(?=:)' | sort | tail -n1)

groupadd -g $((MX_USER_ID+1)) postgres && \
useradd -m -g postgres -u $((MX_USER_ID+1)) postgres && \
chsh -s /bin/bash postgres && \
echo 'postgres_pwd' | passwd --stdin postgres && \
echo 'postgres ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
echo 'root_pwd' | passwd --stdin root

su - postgres <<EOF

ps aux | grep -P '/usr/local/bin/postgres -D /home/postgres/dat' | grep -v grep | awk '{print \$2}' | xargs kill -9

rm -rf /home/postgres/dat

initdb -D /home/postgres/dat

pg_ctl -D /home/postgres/dat -l /home/postgres/launch-postgres.log start
EOF
