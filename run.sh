#!/bin/bash -e

docker run -it --rm \
  -p 8080:8080 \
  --name hawtio \
  uguy/hawtio
