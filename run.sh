#!/bin/sh

url=$1
requests=${2:-10}

if [ -z ${requests} ]; then
    requests = 10
fi

`boom -n ${requests} --json-output ${url} | jq`
