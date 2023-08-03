#/bin/bash

clear
docker container stop tesseract-ocr-training-workflow
docker build -t tesseract-ocr-training-workflow:latest .
echo "##################"
echo "##################"
docker run -d --rm --name tesseract-ocr-training-workflow tesseract-ocr-training-workflow
docker container logs -f tesseract-ocr-training-workflow