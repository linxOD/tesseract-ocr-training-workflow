#/bin/bash

# install leptonica
git clone git@github.com:microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.sh # "./bootstrap-vcpkg.bat" for powershell
./vcpkg integrate install
./vcpkg install leptonica
