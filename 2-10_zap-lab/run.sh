#!/bin/bash

docker container run --name pwst-2-10 --rm -d -v $(pwd)/site:/usr/share/nginx/html -p 80:80 nginx:latest
