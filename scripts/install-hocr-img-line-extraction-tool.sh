#/bish/bash

mkdir -p $DATA_DIR_TRAINING/$MODEL_NAME-ground-truth
wget https://github.com/linxOD/hocr-img-line-extraction/archive/refs/tags/v0.0.1.zip
unzip hocr-img-line-extraction-0.0.1.zip
cd hocr-img-line-extraction-0.0.1
./scripts/install_dep.sh