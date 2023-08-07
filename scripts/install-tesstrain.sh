#/bin/bash

# install tesstrain repo latest
wget https://github.com/tesseract-ocr/tesstrain/archive/refs/heads/main.zip
unzip main
rm -r main.zip

cd tesstrain-main
mkdir data
mkdir data/foo-ground-truth
unzip ocrd-testset.zip -d data/foo-ground-truth
cd ..