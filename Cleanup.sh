#!/bin/sh
make clean 
rm CMakeCache.txt \
   -rf CMakeFiles \
   Makefile \
   cmake_install.cmake

rm -rf \
   */CMakeFiles \
   */CMakeLists.txt \
   */cmake_install.cmake

