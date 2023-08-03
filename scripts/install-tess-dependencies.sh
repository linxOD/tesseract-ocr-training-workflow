# bin/bash

# depencencies for tesseract ocr

# optional
# apt-get install --no-install-recommends asciidoc docbook-xsl xsltproc

# optional if error occurs
# sudo apt-get install libpcre3=2:8.39-13ubuntu0.22.04.1

# see https://notesalexp.org/tesseract-ocr/packages5/en/ubuntu/jammy/amd64/
# for installing tesseract-ocr-5 and language packages

sudo apt-get update
sudo apt-get install -y \
    build-essential \
    automake \
    ca-certificates \
    libleptonica-dev \
    libtool \
    autoconf \
    g++ \
    make \
    pkg-config \
    cmake \
    git \
    curl \
    libjpeg \
    openjpeg \
    libjpeg8-dev \
    libopenjp2-7-dev \
    giflib \
    libgif-dev \
    libpng \
    libpng-dev \
    libtiff \
    libtiff5-dev \
    webp \
    libwebpdemux2 \
    libwebp-dev \
    zlib \
    zlib1g-dev \
    archive \
    libarchive-dev \
    libcurl4-openssl-dev \
    libicu-dev \
    libpango1.0-dev \
    libcairo2-dev \
    apt-transport-https