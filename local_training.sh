#!/usr/bin/env bash

rm -rf models/*.tar.gz

tmstp=$(date +%Y-%m-%d--%H-%M-%S)
rasa train --data 'data' --fixed-model-name m${tmstp}
cd models
curl -u admin:password -X PUT -T ./m${tmstp}.tar.gz "http://localhost:8090/artifactory/mychatbot-generic/model.tar.gz"
 
