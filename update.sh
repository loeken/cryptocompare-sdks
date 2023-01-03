#!/bin/bash
curl -L https://dev-data-api.cryptocompare.com/info/v1/openapi -o openapi.json
python -c 'import sys, yaml, json; print(yaml.dump(json.loads(sys.stdin.read())))' <openapi.json>openapi.yaml
version=`cat openapi.yaml|grep "version:" | cut -d':' -f 2`
echo $version