cmake -G "Ninja" -S . -B Windows-build/ -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
cmake --build Windows-build/ --config Release