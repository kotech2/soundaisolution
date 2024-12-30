#!/bin/bash

unzip example_code_v01.zip -d sample_code

cd sample_code

docker build -t example .

cd -

docker run -it -d \
-h example_docker \
--gpus all \
--shm-size 192g \
-v ./data:/shared/data \
-v ./models:/shared/models \
--name example_docker \
example bash