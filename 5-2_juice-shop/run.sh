#!/bin/bash
docker container run -d --restart=on-failure --name juice_shop --rm -p 8002:3000 bkimminich/juice-shop
