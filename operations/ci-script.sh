#!/usr/bin/env bash

export $(cat ../.version | xargs)

# /usr/local/bin/dobi ci-lint

cd /github/workspace/operations

chmod +x docker-push.sh

sh ./docker-push.sh
