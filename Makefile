stats:
	docker stats

cadvisor:
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

stop:
	docker stop cadvisor