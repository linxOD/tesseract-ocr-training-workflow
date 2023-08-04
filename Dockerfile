FROM ubuntu:22.04
FROM python:3.10

SHELL ["/bin/bash", "-c"]

WORKDIR /code

COPY ./scripts ./scripts
COPY .env .env
COPY ./install-all-dependencies.sh ./install-all-dependencies.sh
COPY ./create-ground-truth.sh ./create-ground-truth.sh
COPY ./start-workflow.sh ./start-workflow.sh

RUN ["chmod", "+x", "scripts/install-tess-dependencies.sh"]
RUN ["chmod", "+x", "scripts/install-tesseract.sh"]
RUN ["chmod", "+x", "scripts/install-tesseract-lang-packages.sh"]
RUN ["chmod", "+x", "scripts/install-tesstrain.sh"]
RUN ["chmod", "+x", "scripts/install-hocr-img-line-extraction-tool.sh"]
RUN ["echo", "deb https://notesalexp.org/tesseract-ocr5/jammy/ jammy main", ">>", "/etc/apt/sources.list"]

ENV TESSDATA_PREFIX=/usr/share/tesseract-ocr/5/tessdata
ENV MODEL_NAME=test_deu
ENV DATA_DIR_TRAINING=./data
ENV DATA_DIR=./data
ENV MAX_ITERATIONS=100000
ENV EPOCHS=100
ENV IMG_EXT=tif
ENV MODEL_LANG=best/deu

RUN ./scripts/install-tess-dependencies.sh
# RUN ./scripts/install-tess-dep-leptonica.sh
RUN ./scripts/install-tesseract.sh
RUN ./scripts/install-tesseract-lang-packages.sh
RUN ./scripts/install-hocr-img-line-extraction-tool.sh
RUN ./scripts/install-tesstrain.sh