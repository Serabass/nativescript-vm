echo Downloading Latest version of Node
sudo wget -q --output-document=/usr/src/node-latest.tar.gz http://nodejs.org/dist/v8.6.0/node-v8.6.0-linux-s390x.tar.xz
pushd /usr/src
echo Extracting Node...
sudo tar zxvf node-latest.tar.gz > /dev/null
sudo chown -R $USER:$USER node-v*
cd node-v*
echo Compiling Node -- This might take a while...
./configure
make
sudo make install
popd