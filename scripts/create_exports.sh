#!/usr/bin/env bash

# export for our current session
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export ANT_HOME=/usr/local/ant
export ANDROID_HOME=/usr/local/android-sdk-linux
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/usr/local/$ANDROID_NDK_FILENAME


# Write to the Non-Interactive bash file
echo 'export ANDROID_HOME=/usr/local/android-sdk-linux' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/usr/local/$ANDROID_NDK_FILENAME' >> ~/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> ~/.bashrc
echo "export ANT_HOME=/usr/local/ant" >> ~/.bashrc

# Write to the Standard .Profile that everything uses
if [[ -f ~/.profile ]]; then
  echo 'ANDROID_HOME=/usr/local/android-sdk-linux' >> ~/.profile
  echo 'PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/usr/local/$ANDROID_NDK_FILENAME' >> ~/.profile
  echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> ~/.profile
  echo "export ANT_HOME=/usr/local/ant" >> ~/.profile
fi

if [[ -f ~/.bash_profile ]]; then
  echo 'export ANDROID_HOME=/usr/local/android-sdk-linux' >> ~/.bash_profile
  echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/usr/local/$ANDROID_NDK_FILENAME' >> ~/.bash_profile
  echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> ~/.bash_profile
  echo "export ANT_HOME=/usr/local/ant" >> ~/.bash_profile
fi
