#!/usr/bin/env bash

export $(cat ../.version | xargs)

# /usr/local/bin/dobi ci-lint

chmod +x ./docker-push.sh

sh ./docker-push.sh
