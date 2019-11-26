if [ -z "$ANDROID_NDK" ]; then
    echo "Android NDK not detected'"
    exit 1
fi

mkdir -p build_android_v7a && cd build_android_v7a
cmake -DANDROID_ABI=armeabi-v7a -DCMAKE_TOOLCHAIN_FILE=../cmaketoolchain/android.toolchain.cmake -DANDROID_TOOLCHAIN_NAME=arm-linux-androideabi-4.9 -DANDROID_NATIVE_API_LEVEL=android-9 ..
cd ..

cmake --build build_android_v7a --config Release
mkdir -p library/Android/armeabi-v7a/
cp build_android_v7a/lua-5.3.4/liblua.a library/Android/armeabi-v7a/liblua.a
cp build_android_v7a/libsocket.a library/Android/armeabi-v7a/libsocket.a
cp build_android_v7a/libprotobuf.a library/Android/armeabi-v7a/libprotobuf.a

mkdir -p build_android_arm64 && cd build_android_arm64
cmake -DANDROID_ABI=arm64-v8a -DCMAKE_TOOLCHAIN_FILE=../cmaketoolchain/android.toolchain.cmake -DANDROID_TOOLCHAIN_NAME=aarch64-linux-android-4.9 -DANDROID_NATIVE_API_LEVEL=android-21 ..
cd ..

cmake --build build_android_arm64 --config Release
mkdir -p library/Android/armeabi-arm64/
cp build_android_arm64/lua-5.3.4/liblua.a library/Android/armeabi-arm64/liblua.a
cp build_android_arm64/libsocket.a library/Android/armeabi-arm64/libsocket.a
cp build_android_arm64/libprotobuf.a library/Android/armeabi-arm64/libprotobuf.a

mkdir -p build_android_x86 && cd build_android_x86
cmake -DANDROID_ABI=x86 -DCMAKE_TOOLCHAIN_FILE=../cmaketoolchain/android.toolchain.cmake -DANDROID_TOOLCHAIN_NAME=x86-4.9 -DANDROID_NATIVE_API_LEVEL=android-9 ..
cd ..

cmake --build build_android_x86 --config Release
mkdir -p library/Android/x86/
cp build_android_x86/lua-5.3.4/liblua.a library/Android/x86/liblua.a
cp build_android_x86/libsocket.a library/Android/x86/libsocket.a
cp build_android_x86/libprotobuf.a library/Android/x86/libprotobuf.a