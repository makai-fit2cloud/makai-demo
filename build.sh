#!/bin/bash

mvn clean package -Dmaven.test.skip=true

docker login -u north-developer -p Calong@2015 registry.fit2cloud.com

docker build -t registry.fit2cloud.com/north/test:20190918 .
docker push registry.fit2cloud.com/north/test:20190918
docker logout registry.fit2cloud.com