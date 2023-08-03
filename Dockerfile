FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

WORKDIR /code

RUN ./scripts/install-hocr-img-line-extraction-tool.sh

RUN export $(grep -v '^#' .env | xargs -d '\n')

RUN ./install-all-dependencies.sh

COPY ./scripts /code/scripts

COPY ./create-ground-truth.sh /code/create-ground-truth.sh

COPY ./install-all-dependencies.sh /code/install-all-dependencies.sh

COPY ./start-docker.sh /code/start-docker.sh

COPY ./start-workflow.sh /code/start-workflow.sh

COPY .env /code/.env

# CMD