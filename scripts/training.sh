#/bin/bash

# MODEL_NAME=deu_frak_vms
# echo $TESSDATA_PREFIX # /usr/local/share/tessdata or /home/daniel/Documents/tesseract-ocr/tessdata
# # optional
# DATA_DIR=$PWD/data
# EPOCHS=100
# MAX_ITERATIONS=100000

echo "start training with params:"

echo MODEL_NAME=$MODEL_NAME
echo DATA_DIR=$OUTPUT_DIR
echo EPOCHS=$EPOCHS
echo MAX_ITERATIONS=$MAX_ITERATIONS
echo TESSDATA_PREFIX=$TESSDATA_PREFIX

cd tesstrain-main
make tesseract-langdata DATA_DIR=$DATA_DIR
make training MODEL_NAME=$MODEL_NAME DATA_DIR=$DATA_DIR EPOCHS=$EPOCHS MAX_ITERATIONS=$MAX_ITERATIONS
cd ..