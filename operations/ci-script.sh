#!/usr/bin/env bash

export $(cat ./.version | xargs)

/usr/local/bin/dobi ci-lint

chmod +x /github/workspace/operations/docker-push.sh

/github/workspace/operations/docker-push.sh
