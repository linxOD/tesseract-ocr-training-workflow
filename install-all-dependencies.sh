#/bin/bash

# create env variables in .env
./scripts/set-env.sh

# install tesseract dependencies
./scripts/install-tess-depencencies.sh

# install leptonica from source
./scripts/install-tess-dep-leptonica.sh

# install tesseract-ocr inlc. training tools
./scripts/install-tesseract.sh

# install tesseract-ocr language packages
./scripts/install-tesseract-lang-packages.sh

# install tesstrain dependencies, langdata and train model
./scripts/install-tesstrain-dep.sh

# install tesstrain, langdata and train model
./scripts/install-tesstrain.sh