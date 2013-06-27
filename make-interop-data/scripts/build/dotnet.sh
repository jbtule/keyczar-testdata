#!/bin/sh -x
#dotnet
cd clones/keyczar-dotnet/Keyczar
export EnableNuGetPackageRestore=true
xbuild
.ci/RunTests.sh
cd ../../..
