#!/usr/bin/env bash

# Use Gradle ppa to get latest gradle
echo 'deb http://ppa.launchpad.net/cwchien/gradle/ubuntu trusty main' | sudo tee /etc/apt/sources.list.d/gradle.list
echo 'deb-src http://ppa.launchpad.net/cwchien/gradle/ubuntu trusty main' | sudo tee --append /etc/apt/sources.list.d/gradle.list

# Update & Add i386 Components that are needed
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386 lib32z1 lib32ncurses5 lib32bz2-1.0 libstdc++6:i386

# Pull in all the Development stuff
sudo apt-get install -y mc linux-headers-generic build-essential g++ ant git openjdk-7-jdk p7zip p7zip-full gradle
