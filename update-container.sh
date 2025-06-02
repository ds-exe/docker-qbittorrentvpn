#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: missing first parameter."
  exit 1
fi

docker build --no-cache -t dsnumbers/docker-qbittorrentvpn .

docker image tag dsnumbers/docker-qbittorrentvpn:latest dsnumbers/docker-qbittorrentvpn:$1

docker push dsnumbers/docker-qbittorrentvpn:$1

docker push dsnumbers/docker-qbittorrentvpn:latest