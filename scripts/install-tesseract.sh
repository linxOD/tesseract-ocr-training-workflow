#/bin/bash

# # install tesseract with training tools latest version
wget https://github.com/tesseract-ocr/tesseract/archive/refs/heads/main.zip
unzip main
rm -r main.zip

cd tesseract-main
./autogen.sh
./configure
make
make install
ldconfig
make training
make training-install
cd ..

# aptitude install libtesseract5 -y
# aptitude install tesseract-ocr -y
# aptitude install libtesseract-dev -y
