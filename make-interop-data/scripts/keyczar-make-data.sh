#!/bin/sh -x
./scripts/testdata-script.sh "cs" "mono clones/keyczar-dotnet/Keyczar/KeyczarTool/bin/Debug/KeyczarTool.exe"
# python requires http://code.google.com/r/jtuley-python-collisions/
./scripts/testdata-script.sh "py" "python clones/keyczar-main/python/build/lib.*/keyczar/keyczart.py"
# java requires http://code.google.com/r/jtuley-java-usekey-interop/
./scripts/testdata-script.sh "j" "java -jar clones/keyczar-main/java/code/target/KeyczarTool*.jar"
