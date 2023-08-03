#/bish/bash

mkdir -p $DATA_DIR_TRAINING/$MODEL_NAME-ground-truth
git clone git@github.com:linxOD/hocr-img-line-extraction.git
cd hocr-img-line-extraction
./scripts/install_dep.sh