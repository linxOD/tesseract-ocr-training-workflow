#/bin/bash

source .env
export $(grep -v '^#' . | xargs -d '\n')