#!/bin/bash
docker container run --rm -d -p 8000:80 --name 3-1_php-intro -v $(pwd):/var/www/html php:8.1-apache
