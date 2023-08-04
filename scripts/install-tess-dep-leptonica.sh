#/bin/bash

# install leptonica
wget https://github.com/microsoft/vcpkg/archive/refs/heads/master.zip
unzip master
rm -r master.zip
cd vcpkg-master
./bootstrap-vcpkg.sh # "./bootstrap-vcpkg.bat" for powershell
./vcpkg integrate install
./vcpkg install leptonica
cd ..
