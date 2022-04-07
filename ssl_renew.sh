#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --ansi never"
DOCKER="/usr/bin/docker"
DOCKERFILES_DIR="/home/docker-mgr/dockerfiles"

cd $DOCKERFILES_DIR
$COMPOSE run --rm certbot renew && $COMPOSE kill -s SIGHUP nginx
