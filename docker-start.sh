#!/bin/bash
app="dev_blog"
docker build -t ${app} .
docker run -d -p 5000:6000 \
  --name=${app} \
  -v $PWD:/app ${app}