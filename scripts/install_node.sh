#!/usr/bin/env bash

sudo apt-get install g++

NODE_INSTALL_DIR=/usr/src
NODE_V=6.11.3
NODE_DOWNLOAD_URL=https://nodejs.org/dist/v${NODE_V}/node-v${NODE_V}.tar.gz
echo Downloading Latest version of Node
echo ${NODE_DOWNLOAD_URL}
sudo wget -q --output-document=${NODE_INSTALL_DIR}/node-latest.tar.gz ${NODE_DOWNLOAD_URL}
pushd ${NODE_INSTALL_DIR}
    echo Extracting Node...
    sudo tar xf node-latest.tar.gz > /dev/null
    sudo chown -R $USER:$USER node-v*
    cd node-v*
    echo Compiling Node -- This might take a while...
    ./configure > /dev/null
    make > /dev/null
    sudo make install > /dev/null
	echo Compiling complete!
popd
