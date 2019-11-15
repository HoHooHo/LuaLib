mkdir -p build_linux && cd build_linux
cmake ..
cd ..

cmake --build build_linux --config Release

mkdir -p library/Linux
cp build_linux/lua-5.3.4/Lua.a library/Linux/Lua.a 
cp build_linux/socket.a library/Linux/socket.a 
cp build_linux/protobuf.a library/Linux/protobuf.a 
