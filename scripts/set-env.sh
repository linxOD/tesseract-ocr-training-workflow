#/bin/bash

source .env
export $(grep -v '^#' .env | xargs -d '\n')