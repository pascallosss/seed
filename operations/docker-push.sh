#!/usr/bin/env bash

current_dir=$(cd $(dirname $0) && pwd)
base_dir=${current_dir}/../..

cd ${base_dir}

echo ${base_dir}

set -e
git config --global user.email "${ghprbActualCommitAuthorEmail:-github@bjoola.nl}"
git config --global user.name "${GITHUB_ACTOR:-GitHub}"
[ -n "${GITHUB_SHA}" ] && export GIT_COMMIT=${ghprbActualCommit}

export VERSION=${APP_VERSION}-${GIT_COMMIT:0:10}

echo ${VERSION}
echo ${GIT_COMMIT}
echo ${GITHUB_ACTOR}
