FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

WORKDIR /code

RUN ./scripts/install-hocr-img-line-extraction-tool.sh

RUN export $(grep -v '^#' .env | xargs -d '\n')

RUN ./install-all-dependencies.sh

COPY ./hocr-img-line-extraction /code/hocr-img-line-extraction

COPY ./tesseract-main /code/tesseract-main

COPY ./tesstrain-main /code/tesstrain-main

# CMD