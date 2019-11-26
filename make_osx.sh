mkdir -p build_osx && cd build_osx
cmake -GXcode ..
cd ..

cmake --build build_osx --config Release

mkdir -p library/Mac
cp build_osx/lua-5.3.4/Release/liblua.a library/Mac/liblua.a 
cp build_osx/Release/libsocket.a library/Mac/libsocket.a 
cp build_osx/Release/libprotobuf.a library/Mac/libprotobuf.a 