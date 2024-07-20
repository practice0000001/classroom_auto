cmake_minimum_required(VERSION 3.10)

# 프로젝트 이름과 C++ 표준 설정
project(Calculator)
set(CMAKE_CXX_STANDARD 11)

# Google Test 라이브러리 추가
add_subdirectory(/usr/src/googletest)

# 헤더 파일 경로 설정
include_directories(include)

# 실행 파일 생성
add_executable(main src/main.cpp src/calculator.cpp)
add_executable(test_calculator tests/test_calculator.cpp)

# Google Test 라이브러리 링크
target_link_libraries(test_calculator gtest gtest_main pthread)
