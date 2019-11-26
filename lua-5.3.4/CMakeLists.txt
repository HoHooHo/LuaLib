# CMake 最低版本号要求
cmake_minimum_required(VERSION 2.8)

set(CMAKE_BUILD_TYPE Debug)


# 项目信息
project(lua)


set(LUA_SRC_PATH src)

set(LUA_SRC_FILES 
    ${LUA_SRC_PATH}/lapi.c
    ${LUA_SRC_PATH}/lauxlib.c
    ${LUA_SRC_PATH}/lbaselib.c
    ${LUA_SRC_PATH}/lbitlib.c
    ${LUA_SRC_PATH}/lcode.c
    ${LUA_SRC_PATH}/lcorolib.c
    ${LUA_SRC_PATH}/lctype.c
    ${LUA_SRC_PATH}/ldblib.c
    ${LUA_SRC_PATH}/ldebug.c
    ${LUA_SRC_PATH}/ldo.c
    ${LUA_SRC_PATH}/ldump.c
    ${LUA_SRC_PATH}/lfunc.c
    ${LUA_SRC_PATH}/lgc.c
    ${LUA_SRC_PATH}/linit.c
    ${LUA_SRC_PATH}/liolib.c
    ${LUA_SRC_PATH}/llex.c
    ${LUA_SRC_PATH}/lmathlib.c
    ${LUA_SRC_PATH}/lmem.c
    ${LUA_SRC_PATH}/loadlib.c
    ${LUA_SRC_PATH}/lobject.c
    ${LUA_SRC_PATH}/lopcodes.c
    ${LUA_SRC_PATH}/loslib.c
    ${LUA_SRC_PATH}/lparser.c
    ${LUA_SRC_PATH}/lstate.c
    ${LUA_SRC_PATH}/lstring.c
    ${LUA_SRC_PATH}/lstrlib.c
    ${LUA_SRC_PATH}/ltable.c
    ${LUA_SRC_PATH}/ltablib.c
    ${LUA_SRC_PATH}/ltm.c
    ${LUA_SRC_PATH}/lundump.c
    ${LUA_SRC_PATH}/lutf8lib.c
    ${LUA_SRC_PATH}/lvm.c
    ${LUA_SRC_PATH}/lzio.c
)

# add_definitions("-DLUA_USE_C89")


if(APPLE)
    if(IOS)
        set(CMAKE_OSX_ARCHITECTURES "$(ARCHS_STANDARD)")
    else()
        set(CMAKE_OSX_ARCHITECTURES "$(ARCHS_STANDARD_64_BIT)")
    endif()
endif()

add_library(lua STATIC
    ${LUA_SRC_FILES}
)
