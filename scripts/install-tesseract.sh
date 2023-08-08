#/bin/bash

# # install tesseract with training tools latest version
wget https://github.com/tesseract-ocr/tesseract/archive/refs/tags/5.3.2.zip
unzip 5.3.2
rm -r 5.3.2.zip

cd tesseract-5.3.2
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
