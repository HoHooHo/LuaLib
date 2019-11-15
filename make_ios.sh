mkdir -p build_ios && cd build_ios
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/iOS.cmake  -GXcode ../
cd ..

cmake --build build_ios --config Release

mkdir -p library/iOS/
cp build_ios/lua-5.3.4/Release-iphoneos/Lua.a library/iOS/Lua.a 
cp build_ios/Release-iphoneos/socket.a library/iOS/socket.a 
cp build_ios/Release-iphoneos/protobuf.a library/iOS/protobuf.a 