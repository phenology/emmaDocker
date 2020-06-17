#!/bin/bash

curDate=$(date +%d%m%Y)

docker build --network=host -t nlesc/emmahost:${curDate} -t nlesc/emmahost:latest .
