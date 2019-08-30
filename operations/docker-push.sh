#!/usr/bin/env bash

current_dir=$(cd $(dirname $0) && pwd)
base_dir=${current_dir}/../..

cd ${base_dir}

set -e
git config --global user.email "${ghprbActualCommitAuthorEmail:-github@bjoola.nl}"
git config --global user.name "${ghprbActualCommitAuthor:-GitHub}"
[ -n "${ghprbActualCommit}" ] && export GIT_COMMIT=${ghprbActualCommit}

export VERSION=${APP_VERSION}-${GIT_COMMIT:0:10}

echo ${VERSION}
