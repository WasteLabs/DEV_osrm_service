authenticate:
	aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u6u7x5n5;

build:
	docker build -t public.ecr.aws/u6u7x5n5/dev_osrm_service:latest ./docker/;

push:
	docker push public.ecr.aws/u6u7x5n5/dev_osrm_service:v1.1.0;

check_container_run:
	/bin/bash docker/check_if_container_is_running.sh

run:
	docker-compose -f docker/docker-compose-test.yaml up -d

stop:
	docker-compose -f docker/docker-compose-test.yaml down
