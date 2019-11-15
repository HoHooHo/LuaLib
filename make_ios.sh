mkdir -p build_ios && cd build_ios
cmake -DCMAKE_TOOLCHAIN_FILE=../cmaketoolchain/iOS.cmake  -GXcode ../
cd ..

cmake --build build_ios --config Release

mkdir -p library/iOS/
cp build_ios/lua-5.3.4/Release-iphoneos/libLua.a library/iOS/libLua.a 
cp build_ios/Release-iphoneos/libsocket.a library/iOS/libsocket.a 
cp build_ios/Release-iphoneos/libprotobuf.a library/iOS/libprotobuf.a 