#!/bin/bash

echo "Stop all running containers"
docker stop $(docker ps -a -q)

echo "Delete all containers"
docker rm $(docker ps -a -q)

echo "Delete all images"
docker rmi -f $(docker images -q)

echo "Delete dangling images"
docker rmi $(docker images -f "dangling=true" -q)

echo "Done!"
