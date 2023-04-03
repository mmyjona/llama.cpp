cmake -G "Ninja" -S . -B build-win/ -DCMAKE_BUILD_TYPE=Release
cmake --build build-win/ --config Release