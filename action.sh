#!/bin/bash

set -e
set -x

function die {
  echo $1
  exit 1
}

[[ "${GITHUB_EVENT_NAME}" != "release" ]] && \
  die "unsupported event: ${GITHUB_EVENT_NAME}"

jq . ${GITHUB_EVENT_PATH}
