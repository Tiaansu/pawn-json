#!/bin/bash

docker build \
    -t pawn-json/build:ubuntu-18.04 ./ \
|| exit 1

docker run \
    --rm \
    -t \
    -w /code \
    -v $PWD/..:/code \
    pawn-json/build:ubuntu-18.04