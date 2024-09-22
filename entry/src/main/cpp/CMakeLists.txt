# Set the minimum required version of CMake to 3.4.1
cmake_minimum_required(VERSION 3.4.1)

# set the project name as "XComponent"
project(XComponent)

# Define the variable NATIVERENDER_ROOT_PATH as the root path of the current source code
set(NATIVERENDER_ROOT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

# Add the header file path to the project
include_directories(
    ${NATIVERENDER_ROOT_PATH}
    ${NATIVERENDER_ROOT_PATH}/include
)

# Build the shared library vpn_client and add the source code file vpn_client.cpp
add_library(vpn_client SHARED vpn_client.cpp)

# Link two library files into the vpn_client library
target_link_libraries(vpn_client PUBLIC libace_napi.z.so libc++.a)
target_link_libraries(vpn_client PUBLIC libhilog_ndk.z.so)