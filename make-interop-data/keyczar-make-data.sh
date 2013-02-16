#!/bin/sh -x
./testdata-script.sh "cs" "mono KeyczarTool.exe"
# python requires http://code.google.com/r/jtuley-python-collisions/
./testdata-script.sh "py" "python keyczar/keyczart.py"
# java requires http://code.google.com/r/jtuley-java-usekey-interop/
./testdata-script.sh "j" "java -jar KeyczarTool.jar"
