#/bin/bash

clear
docker container stop tess-ocr-wf
docker build -t tess-ocr-wf:latest .
echo "##################"
echo "##################"
docker run -it -d --rm --name tess-ocr-wf tess-ocr-wf:latest
# docker container logs -f tess-ocr-wf
docker exec -it tess-ocr-wf bash