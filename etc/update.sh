#! /bin/sh
echo "stop ghost container"
docker-compose stop ghost
echo "pull and build latest ghost image"
docker-compose up -d --build ghost