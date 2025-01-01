#!/bin/bash

unzip example_code_v01.zip -d sample_code

cd sample_code
docker build -t example .

cd -

docker run -it -d \
	-h example_docker \
	--gpus all \
	--shm-size 192g \
	-v $PWD/data:/shared/data \
	-v $PWD/models:/shared/models \
	--name example_docker \
	example /bin/bash
