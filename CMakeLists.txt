# 各ディレクトリにCMakeLists.txtを作る

# ------------------------------------------
# ${PROJECT_HOME}/
#   ./CMakeLists.txt(1) <- new
#   ./main.cpp
#   ./mod1.hpp
#   ./mod1/
#      CMakeLists.txt(2) <- new
#      func1.cpp
#      func2.cpp
#   ./mod2.hpp
#   ./mod2/
#      CMakeLists.txt(3) <- new
#      func1.cpp
#      func2.cpp
# 
# ------------------------------------------
# -- ./CMakeLists.txt(1)
# ------------------------------------------
# cmake_minimum_required(VERSION 2.8)
# add_subdirectory(mod1)                # <- new
# add_subdirectory(mod2)                # <- new
# add_executable(Main main.cpp)
# target_link_libraries(Main Mod1 Mod2) # <- new
#
# ------------------------------------------
# -- ./mod1/CMakeLists.txt(2)
# --   Generate Library 'Mod1'
# ------------------------------------------
# cmake_minimum_required(VERSION 2.8)
# add_library(Mod1 STATIC 
#   func1.cpp
#   func2.cpp
# )
#
# ------------------------------------------
# -- ./mod2/CMakeLists.txt(3)
# --   Generate Library 'Mod2'
# ------------------------------------------ 
# cmake_minimum_required(VERSION 2.8)
# add_library(Mod2 STATIC
#   func1.cpp
#   func2.cpp
# )

cmake_minimum_required(VERSION 2.8)
#add_subdirectory(mod1)                # <- new
#add_subdirectory(mod2)                # <- new
#
#execute_process( 外部コマンドを呼び出す
#        COMMAND make -f exec_flex.mak 
#        WORKING_DIRECTORY lex)
#
add_executable(Main main.cpp)
add_definitions("-Wall -std=c++11") 


# OpenGL、Boost、SDL2ライブラリを検索
find_package(OpenGL REQUIRED)
find_package(Boost 1.62 REQUIRED COMPONENTS system iostreams filesystem)
 
include(FindPkgConfig)
pkg_search_module(SDL2 REQUIRED sdl2)
#pkg_search_module(SDL2Image REQUIRED SDL2_image>=2.0.0)
 
# OpenGL、Boost、SDL2をincludeパスに設定
include_directories(SYSTEM
 ${OPENGL_INCLUDE_DIRS}
 ${Boost_INCLUDE_DIRS}
 ${SDL2_INCLUDE_DIRS}
### ${SDL2IMAGE_INCLUDE_DIRS}
)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include/)
