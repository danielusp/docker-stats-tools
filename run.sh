#!/bin/bash

docker run \
	--rm \
	--volume=/:/rootfs:ro \
	--volume=/var/run:/var/run:ro \
	--volume=/sys:/sys:ro \
	--volume=/var/lib/docker/:/var/lib/docker:ro \
	--volume=/dev/disk/:/dev/disk:ro \
	--publish=1010:8080 \
	--detach=true \
	--name=cadvisor \
	google/cadvisor:latest

sleep 5
google-chrome http://localhost:1010/containers/