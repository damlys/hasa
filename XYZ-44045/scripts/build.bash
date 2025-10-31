#!/bin/bash
set -e

function main {
  local image="localhost:5000/container-structure-test:0.0.0"

  echo ">>> build"
  docker build --tag="${image}" .

  echo ">>> test"
  docker run --rm "${image}"

  echo ">>> done"
}

main "$@"
