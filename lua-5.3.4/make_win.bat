mkdir build_win64 & pushd build_win64
cmake -G "Visual Studio 16 2019" ..
popd
cmake --build build_win64 --config Release

md library\Win64
copy /Y build_win64\Release\Lua.lib library\Win64\Lua.lib
pause