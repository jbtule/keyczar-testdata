#!/bin/sh
echo "Cleaning previous checkout..."
scripts/clean-checkout.sh
echo "Cloning sources..."
scripts/clone-sources.sh > logs/clone.txt 2>&1
echo "Building and testing sources..."
scripts/build-test-sources.sh > logs/build-test.txt 2>&1
echo "Generating new interop-data..."
scripts/keyczar-make-data.sh > logs/gen-data.txt 2>&1
echo "Done."
ls logs gen-interop-data clones
