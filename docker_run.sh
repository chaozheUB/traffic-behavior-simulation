#!/bin/bash
docker run --rm -v /home:/home -v /media:/media --privileged \
  --env CONTAINER_NAME=tbsim \
  --net=host -it --name=tbsim \
  --gpus all nvcr.io/nvidia/pytorch:23.06-py3 /bin/bash