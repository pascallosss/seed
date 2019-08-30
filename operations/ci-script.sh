#!/bin/sh -l

export $(cat ./.version | xargs)

/usr/local/bin/dobi ci-lint

chmod +X ./docker-push.sh
