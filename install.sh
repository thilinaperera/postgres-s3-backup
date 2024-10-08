#! /bin/sh

# exit if a command fails
set -eo pipefail

apk update
apk add openssl aws-cli
apk add postgresql16-client --repository=https://dl-cdn.alpinelinux.org/alpine/v3.20/main

# cleanup
rm -rf /var/cache/apk/*
