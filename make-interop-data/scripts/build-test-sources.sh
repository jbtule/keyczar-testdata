#!/bin/sh -x
#java
cd clones
cd keyczar-main/java/code
mvn package
cd ../../..
#python
cd keyczar-main/python
python setup.py build
python setup.py test 
cd ../..
#c++
cd keyczar-main/cpp/src/keyczar
make kctests
make keyczart
cd ../../../..
#dotnet
cd keyczar-dotnet/Keyczar
.ci/PreXbuild.sh
./mono-build.sh Keyczar.sln
.ci/PostXbuild.sh
cd ../..
#go
cd keyczar-go
go test -v
#done
cd ..
