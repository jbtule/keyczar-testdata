#!/bin/sh -x
#dotnet
cd clones/keyczar-dotnet/Keyczar
export EnableNuGetPackageRestore=true
mozroots --import --sync
xbuild
.ci/RunTests.sh
cd ../../..
