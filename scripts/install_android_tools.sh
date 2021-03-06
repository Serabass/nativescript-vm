#!/usr/bin/env bash

echo Installing Android Components This can take a while...
# Yes, I fully realize I'm pulling android-17, 21 & 22.  17 & 21
#   are required for different parts of NativeScript; 22 is the latest
( sleep 7 && while [ 1 ]; do sleep 2; echo y; done ) | \
        android update sdk --no-ui --filter platform-tool,android-17,android-21,android-22,build-tools-22.0.1
