#!/bin/bash -e

java -jar /hawtio/hawtio.jar --contextPath "${HAWTIO_CONTEXT_PATH:-/mc}" $@
