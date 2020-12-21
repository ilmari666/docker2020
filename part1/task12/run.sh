#!/bin/bash
docker rm -f front
docker rm -f back

docker run -d -p 5000:5000 --name front frontend
touch logs.txt
docker run -d -v$(pwd)/logs.txt:/usr/src/app/backend-example-docker-master/logs.txt -p 8000:8000 --name back backend 
