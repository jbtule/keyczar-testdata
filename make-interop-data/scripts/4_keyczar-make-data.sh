#!/bin/sh -x

# start go
cd clones/keyczar-go
export GOPATH=`pwd`
cd ../..
./scripts/_include/testdata-script.sh "go" "go run clones/keyczar-go/src/github.com/dgryski/dkeyczar/keyczart/dkeyczart.go" > logs/gen_go.txt 2>&1

# start dotnet
./scripts/_include/testdata-script.sh "cs" "mono clones/keyczar-dotnet/Keyczar/KeyczarTool/bin/Debug/KeyczarTool.exe" > logs/gen_dotnet.txt 2>&1

# start java
# java requires http://code.google.com/r/jtuley-keyczar-dev/
./scripts/_include/testdata-script.sh "j" "java -jar clones/keyczar-main/java/code/target/KeyczarTool*.jar"  > logs/gen_java.txt 2>&1

# start python2
# python requires http://code.google.com/r/jtuley-keyczar-dev/
cd clones/keyczar-main/python/build/lib.*/
chmod +x keyczar/tool/keyczart.py
export PYTHONPATH=`pwd`
# include python2 eggs
cd ../..
eggs=`ls -d1 *py2.*.egg`
for egg in $eggs; do
    cd $egg
    export PYTHONPATH="`pwd`:$PYTHONPATH"
    cd ..
done
cd ../../..
./scripts/_include/testdata-script.sh "py" "python clones/keyczar-main/python/build/lib.*/keyczar/tool/keyczart.py" > logs/gen_python.txt 2>&1

# start python3
# python requires http://code.google.com/r/jtuley-keyczar-dev/
cd clones/keyczar-main/python/build/lib/
chmod +x keyczar/tool/keyczart.py
export PYTHONPATH=`pwd`
# include python3 eggs
cd ../..
eggs=`ls -d1 *py3.*.egg`
for egg in $eggs; do
    cd $egg
    export PYTHONPATH="`pwd`:$PYTHONPATH"
    cd ..
done
cd ../../..
./scripts/_include/testdata-script.sh "py3" "python3 clones/keyczar-main/python/build/lib/keyczar/tool/keyczart.py" > logs/gen_python3.txt 2>&1


