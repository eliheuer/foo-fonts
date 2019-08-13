#!/bin/bash
set -e

echo "[INFO] Starting build script"
echo "[INFO] Generating variable fonts"

glyphsSource="foo.glyphs"
outputDir="fonts/variable"

echo "[INFO] Making 'fonts/variable' directory if it doesn't already exist"
mkdir -p $outputDir

for i in $glyphsSource; do
    echo "[TEST] Queued source file: $i"
done

echo "[INFO] Building Foo Fonts with Fontmake"
fontmake -g sources/foo.glyphs -o variable \
    --output-path $outputDir/Foo-vf.ttf \
    --verbose ERROR

echo "[INFO] Removing build directories"
rm -rf master_ufo/ instance_ufo/ variable_ttf/
