#/bin/bash

# MODEL_NAME=deu_frak_vms
# echo $TESSDATA_PREFIX # /usr/local/share/tessdata or /home/daniel/Documents/tesseract-ocr/tessdata
# # optional
# DATA_DIR=$PWD/data
# EPOCHS=100
# MAX_ITERATIONS=100000

echo "start training with params:"

echo MODEL_NAME=$MODEL_NAME
echo DATA_DIR=$DATA_DIR
# echo EPOCHS=$EPOCHS
echo MAX_ITERATIONS=$MAX_ITERATIONS
echo TESSDATA_PREFIX=$TESSDATA_PREFIX
echo START_MODEL=$START_MODEL
echo TESSDATA=$TESSDATA

cd tesstrain-main
make tesseract-langdata DATA_DIR=$DATA_DIR
# make training MODEL_NAME=$MODEL_NAME START_MODEL=$START_MODEL DATA_DIR=$DATA_DIR TESSDATA=$TESSDATA MAX_ITERATIONS=$MAX_ITERATIONS
nohup make training MODEL_NAME=$MODEL_NAME START_MODEL=$START_MODEL DATA_DIR=$DATA_DIR TESSDATA=$TESSDATA MAX_ITERATIONS=$MAX_ITERATIONS > /usr/share/tesseract-ocr/5/tessdata/TESSTRAIN_$MODEL_NAME.LOG
cd ..