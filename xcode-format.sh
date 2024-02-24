# This script is used to format the source code of libwebp to be compatible with Xcode.

find . -name '*.h' -o -name '*.c' -exec sed -i '' 's|#include "webp|#include "..\/src\/webp|g' {} \;
sed -i '' 's|src\/dsp\/cpu.c|..\/src\/dsp\/cpu.c|g' ./sharpyuv/sharpyuv_cpu.c
rm -rf ./swig
