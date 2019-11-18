# CMake 最低版本号要求
cmake_minimum_required(VERSION 2.8)

set(CMAKE_BUILD_TYPE Debug)


# 项目信息
project(LUALIB)




set(LUA_PATH lua-5.3.4)

add_subdirectory(${LUA_PATH})


set(LUASOCKET_SRC_PATH luasocket-master/src)

IF (WIN32)
    set(LUASOCKET_SRC_FILES 
        ${LUASOCKET_SRC_PATH}/auxiliar.c
        ${LUASOCKET_SRC_PATH}/buffer.c
        ${LUASOCKET_SRC_PATH}/except.c
        ${LUASOCKET_SRC_PATH}/inet.c
        ${LUASOCKET_SRC_PATH}/io.c
        ${LUASOCKET_SRC_PATH}/luasocket.c
        ${LUASOCKET_SRC_PATH}/mime.c
        ${LUASOCKET_SRC_PATH}/options.c
        ${LUASOCKET_SRC_PATH}/select.c
        ${LUASOCKET_SRC_PATH}/tcp.c
        ${LUASOCKET_SRC_PATH}/timeout.c
        ${LUASOCKET_SRC_PATH}/udp.c
        ${LUASOCKET_SRC_PATH}/wsocket.c
    )
ELSE ()
    set(LUASOCKET_SRC_FILES 
        ${LUASOCKET_SRC_PATH}/auxiliar.c
        ${LUASOCKET_SRC_PATH}/buffer.c
        ${LUASOCKET_SRC_PATH}/except.c
        ${LUASOCKET_SRC_PATH}/inet.c
        ${LUASOCKET_SRC_PATH}/io.c
        ${LUASOCKET_SRC_PATH}/luasocket.c
        ${LUASOCKET_SRC_PATH}/mime.c
        ${LUASOCKET_SRC_PATH}/options.c
        ${LUASOCKET_SRC_PATH}/select.c
        ${LUASOCKET_SRC_PATH}/serial.c
        ${LUASOCKET_SRC_PATH}/tcp.c
        ${LUASOCKET_SRC_PATH}/timeout.c
        ${LUASOCKET_SRC_PATH}/udp.c
        ${LUASOCKET_SRC_PATH}/unix.c
        ${LUASOCKET_SRC_PATH}/usocket.c
    )
ENDIF()

set(PROTOBUF_SRC_PATH lua-protobuf-master)
set(PB_SRC_FILES 
    ${PROTOBUF_SRC_PATH}/pb.c
)

include_directories(${LUA_PATH}/src)



if(APPLE)
    if(IOS)
        set(CMAKE_OSX_ARCHITECTURES "$(ARCHS_STANDARD)")
    else()
        set(CMAKE_OSX_ARCHITECTURES "$(ARCHS_STANDARD_64_BIT)")
    endif()
endif()


add_library(socket STATIC
    ${LUASOCKET_SRC_FILES}
)



add_library(protobuf STATIC
    ${PB_SRC_FILES}
)
