#!/bin/sh

# Build fonts

set -e

echo "Build Special Gothic"

gftools builder config.yaml

echo "Build Special Gothic Expanded"

gftools builder config-expanded.yaml

echo "Build Special Gothic Condensed"

gftools builder config-condensed.yaml

echo "Fonts built"

# QA

cd ..

gftools qa -f fonts/specialgothic/ttf/*.ttf -a -gfb -o qa-specialgothic

gftools qa -f fonts/specialgothic-condensed/ttf/*.ttf -a -gfb -o qa-specialgothic-condensed

gftools qa -f fonts/specialgothic-expanded/ttf/*.ttf -a -gfb -o qa-specialgothic-expanded

echo "QA done"




