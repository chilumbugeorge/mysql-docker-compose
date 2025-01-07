#!/bin/bash

docker stop mariadb-lab-1
docker stop mariadb-lab-2
docker stop mariadb-lab-3
docker stop mysqltools

docker rm mariadb-lab-1
docker rm mariadb-lab-2
docker rm mariadb-lab-3
docker rm mysqltools

docker rmi mysql-docker-compose-mariadb-lab-1
docker rmi mysql-docker-compose-mariadb-lab-2
docker rmi mysql-docker-compose-mariadb-lab-3
docker rmi mysql-docker-compose-mysqltools
