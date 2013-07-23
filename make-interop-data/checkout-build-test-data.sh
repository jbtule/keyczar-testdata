#!/bin/sh
echo "Cleaning previous checkout..."
scripts/1_clean-checkout.sh
echo "Cloning sources..."
scripts/2_clone-sources.sh > logs/clone.txt 2>&1
echo "Building and testing sources..."
scripts/3_build-test-sources.sh
echo "Generating new interop-data..."
scripts/4_keyczar-make-data.sh
echo "Done."
ls logs gen-interop-data clones
