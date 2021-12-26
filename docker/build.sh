aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u6u7x5n5;
docker build -t public.ecr.aws/u6u7x5n5/dev_osrm_service:1.0.0 ./docker/;
docker push public.ecr.aws/u6u7x5n5/dev_osrm_service:1.0.0;