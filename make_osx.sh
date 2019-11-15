mkdir -p build_osx && cd build_osx
cmake -GXcode ..
cd ..

cmake --build build_osx --config Release

mkdir -p library/Mac
cp build_osx/lua-5.3.4/Release/Lua.a library/Mac/Lua.a 
cp build_osx/Release/socket.a library/Mac/socket.a 
cp build_osx/Release/protobuf.a library/Mac/protobuf.a 