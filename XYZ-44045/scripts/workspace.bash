#!/bin/bash
set -e

function main {
  docker run --rm -it \
    --mount=type=bind,src=./vendor,dst=/vendor \
    --workdir=/vendor/github.com/GoogleContainerTools/container-structure-test-1.21.1 \
    golang:1-bookworm \
    bash
}

main "$@"
