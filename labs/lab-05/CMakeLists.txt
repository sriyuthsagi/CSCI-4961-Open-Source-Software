cmake_minimum_required(VERSION 3.3)
project(Libraries)

add_library(blockstatic STATIC source/block.c)

add_library(blockdynamic SHARED source/block.c)

add_executable(static_block2 program.c)
target_link_libraries(static_block2 blockstatic)

add_executable(dynamic_block2 program.c)
target_link_libraries(dynamic_block2 blockdynamic)