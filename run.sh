#!/bin/bash
# brew install docker-buildx  ( if you don't have it already )
docker-buildx build -t netscaler-exporter .
docker run -p 8888:8888 -e NS_PASSWORD=$NS_PASSWORD -e  NS_USER=$NS_USER netscaler-exporter:latest  --target-nsip=10.10.127.126 --port=8888 --metric=lbvserver --log-level=DEBUG --vlb-prefix-filter="autoice.{5}-(prod|nonprod)"