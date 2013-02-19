#!/bin/sh -x
mkdir clones
cd clones
git clone --recursive  https://code.google.com/p/keyczar/ keyczar-main
cd keyczar-main
#pull in python fixes for usekey
git pull https://code.google.com/r/jtuley-python-collisions
#pull in java fixes for usekey
git pull https://code.google.com/r/jtuley-java-usekey-interop
cd ..
git clone --recursive https://github.com/jbtule/keyczar-dotnet.git keyczar-dotnet
git clone --recursive  https://github.com/dgryski/dkeyczar.git keyczar-go
cd ..
