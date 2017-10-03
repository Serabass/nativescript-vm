#!/usr/bin/env bash

mkdir ~/repos
pushd ~/repos

git clone https://github.com/NativeScript/NativeScript
git clone https://github.com/NativeScript/android-runtime
git clone https://github.com/NativeScript/nativescript-cli
git clone https://github.com/NativeScript/android-metadata-generator

cd NativeScript
npm install
cd ..

cd android-runtime
npm install
cd ..

cd nativescript-cli
npm install
cd ..

cd android-metadata-generator
npm install
cd ..

popd
