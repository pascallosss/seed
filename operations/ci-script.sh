#!/bin/sh -l

export $(cat ./.version | xargs)

/usr/local/bin/dobi ci-lint

chmod +X /github/workspace/operations/docker-push.sh

source /github/workspace/operations/docker-push.sh
