#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Error: missing first parameter."
  exit 1
fi

podman build --no-cache -t dsnumbers/docker-qbittorrentvpn .

podman image tag dsnumbers/docker-qbittorrentvpn:latest dsnumbers/docker-qbittorrentvpn:$1

podman push dsnumbers/docker-qbittorrentvpn:$1

podman push dsnumbers/docker-qbittorrentvpn:latest
