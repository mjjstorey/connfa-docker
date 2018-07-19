#!/usr/bin/env bash

START_DIR=$(pwd)

cd joaorosilva-connfa

if cd connfa; 
then 
	git pull; 
else 
	git clone https://github.com/lemberg/connfa-integration-server.git connfa
	cd connfa
fi

git checkout --force "2.0.1" 
cd ..
docker build . --tag connfa-local
docker tag connfa-local joaorosilva/connfa:2.1.0

cd $START_DIR
cd joaorosilva-connfa-migrator
docker build . --tag connfa-migrator-local
docker tag connfa-local joaorosilva/connfa-migrator:2.1.0
cd $START_DIR

echo "now visit locahost:80"
echo "default username for logging in: admin@test.com. Password: adminadmin123"

docker-compose up

