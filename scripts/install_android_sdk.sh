ANDROID_SDK_FILENAME=android-sdk_r24.3.4-linux.tgz

echo Downloading Latest version of Android SDK, this can take a while...
sudo wget -q --output-document=/usr/src/android-sdk.tgz  http://dl.google.com/android/$ANDROID_SDK_FILENAME
pushd /usr/local
echo Extracting Android SDK...
sudo tar zxvf /usr/src/android-sdk.tgz > /dev/null
sudo chown -R $USER:$USER /usr/local/android-sdk-linux
popd