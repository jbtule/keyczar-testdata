#!/bin/sh -x
./scripts/testdata-script.sh "cs" "mono clones/keyczar-dotnet/Keyczar/KeyczarTool/bin/Debug/KeyczarTool.exe" > logs/gen_dotnet.txt 2>&1

# java requires http://code.google.com/r/jtuley-java-usekey-interop/
./scripts/testdata-script.sh "j" "java -jar clones/keyczar-main/java/code/target/KeyczarTool*.jar"  > logs/gen_java.txt 2>&1

# python requires https://github.com/jbtule/keyczar-python2to3
cd clones/keyczar-main/python/build/lib.*/
chmod +x keyczar/tool/keyczart.py
export PYTHONPATH=`pwd`
cd ../../../../..
./scripts/testdata-script.sh "py" "python clones/keyczar-main/python/build/lib.*/keyczar/tool/keyczart.py" > logs/gen_python.txt 2>&1

cd clones/keyczar-main/python/build/lib/
chmod +x keyczar/tool/keyczart.py
export PYTHONPATH=`pwd`
cd ../../../../..
./scripts/testdata-script.sh "py3" "python3 clones/keyczar-main/python/build/lib/keyczar/tool/keyczart.py" > logs/gen_python3.txt 2>&1
