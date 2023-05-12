cmake -G "Ninja" -S . -B build-win-msvc/ -DCMAKE_BUILD_TYPE=Release
cmake --build build-win-msvc/ --config Release