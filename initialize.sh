#!/bin/bash

2015-09-14 20:17:11



create_exports() {
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
}

create_exports
sudo bash install_pkgs.sh
sudo bash install_node.sh
sudo bash install_android_sdk.sh
sudo bash install_android_tools.sh
sudo bash install_android_ndk.sh
sudo bash install_github_support.sh
sudo bash install_nativescript.sh
sudo bash install_network_support.sh

echo "Done"



