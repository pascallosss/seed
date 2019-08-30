#!/usr/bin/env bash

cd /github/workspace/operations

export $(cat ../.version | xargs)

# /usr/local/bin/dobi ci-lint

chmod +x docker-push.sh

sh docker-push.sh
