# bin/bash

# install tesseract with training tools latest version
wget https://github.com/tesseract-ocr/tesseract/archive/refs/heads/main.zip
unzip main
rm -r main.zip

cd tesseract-main
./autogen.sh
./configure
make
sudo make install
sudo ldconfig
make training
sudo make training-install