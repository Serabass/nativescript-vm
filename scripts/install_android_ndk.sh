ANDROID_NDK_FILENAME=android-ndk-r10e

echo Downloading Android NDK, this can take a while...
sudo wget -q --output-document=/usr/src/$ANDROID_NDK_FILENAME.7z http://dl.google.com/android/ndk/$ANDROID_NDK_FILENAME-linux-x86_64.bin
sudo chmod a+r /usr/src/$ANDROID_NDK_FILENAME.7z
sudo mkdir /usr/local/$ANDROID_NDK_FILENAME
sudo chmod 777 /usr/local/$ANDROID_NDK_FILENAME
7z x /usr/src/$ANDROID_NDK_FILENAME.7z -o/usr/local