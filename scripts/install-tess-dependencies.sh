#/bin/bash

# depencencies for tesseract ocr

# optional
# apt-get install --no-install-recommends asciidoc docbook-xsl xsltproc

# optional if error occurs
# sudo apt-get install libpcre3=2:8.39-13ubuntu0.22.04.1

# see https://notesalexp.org/tesseract-ocr/packages5/en/ubuntu/jammy/amd64/
# for installing tesseract-ocr-5 and language packages

apt-get update -y
apt-get install -y \
    automake \
    ca-certificates \
    g++ \
    git \
    libtool \
    libleptonica-dev \
    bc \
    make \
    pkg-config \
    apt-transport-https \
    aptitude \
    libicu-dev \
    libpango1.0-dev \
    libcairo2-dev

# apt-get update -oAcquire::AllowInsecureRepositories=true
# apt-get install notesalexp-keyring -oAcquire::AllowInsecureRepositories=true
# apt-get update