#!/usr/bin/env bash

ANDROID_NDK_FILENAME=android-ndk-r10e
ANDROID_NDK_DOWNLOAD_URL=http://dl.google.com/android/ndk/$ANDROID_NDK_FILENAME-linux-x86_64.bin
echo Downloading Android NDK, this can take a while...
sudo wget -q --output-document=/usr/src/$ANDROID_NDK_FILENAME.7z ${ANDROID_NDK_DOWNLOAD_URL}
sudo chmod a+r /usr/src/$ANDROID_NDK_FILENAME.7z
sudo mkdir /usr/local/$ANDROID_NDK_FILENAME
sudo chmod 777 /usr/local/$ANDROID_NDK_FILENAME
7z x /usr/src/$ANDROID_NDK_FILENAME.7z -o/usr/local
