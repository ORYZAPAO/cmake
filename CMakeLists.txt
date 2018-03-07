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
