# TESSERACT-OCR-TRAINING-WORKFLOW OS: LINUX

This repository contains a workflow for training Tesseract OCR models. It is based on the [Tesseract OCR Training Workflow](https://github.com/tesseract-ocr/tesstrain) and [Tesseract-OCR installation](https://github.com/tesseract-ocr/tesseract) from [GIT source](https://tesseract-ocr.github.io/tessdoc/Compiling.html).

## Usage YAML
See `.github/workflows/*.yml` file.
* IMPORTANT! Update the environment variables in the workflow file with your data.
* IMPORTANT! Before starting the workflow add a images download script to the YAML file. See step `create ground-truth` and move them to the `hocr-img-line-extraction/my_img/` folder.

## Usage LOCAL
* run `./scripts/install-hocr-img-line-extraction-tool.sh`
* add images to `./hocr-img-line-extraction/my_img/` folder
* update `.env` file with your data and run `./scripts/set-env.sh`
* run `./create-ground-truth.sh`
* run `./start-workflow.sh`

## LICENSE
[MIT](LICENSE)