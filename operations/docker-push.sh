#!/usr/bin/env bash

current_dir=$(cd $(dirname $0) && pwd)
base_dir=${current_dir}/../..

cd ${base_dir}

echo ${base_dir}

set -e
export VERSION=${APP_VERSION}-${GITHUB_SHA:0:10}

echo ${VERSION}
echo ${GIT_COMMIT}
echo ${GITHUB_ACTOR}
