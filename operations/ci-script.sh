#!/usr/bin/env bash

cd /github/workspace/operations

export $(cat ../.version | xargs)

# /usr/local/bin/dobi ci-lint

chmod +x ./docker-push.sh

sh /github/workspace/operations/docker-push.sh
