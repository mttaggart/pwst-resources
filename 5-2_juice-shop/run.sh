#!/bin/bash
docker container run -d -e NODE_ENV=unsafe --restart=on-failure --name juice_shop -p 8002:3000 bkimminich/juice-shop
