CXX = g++
CXXFLAGS = -I/usr/include -pthread

# 기본 타겟
all: main test_calculator

# main 실행 파일 빌드
main: src/main.cpp src/calculator.cpp include/calculator.h
    $(CXX) $(CXXFLAGS) -o main src/main.cpp src/calculator.cpp

# test_calculator 실행 파일 빌드 및 테스트 실행
test_calculator: tests/test_calculator.cpp src/calculator.cpp include/calculator.h
    $(CXX) $(CXXFLAGS) -o test_calculator tests/test_calculator.cpp src/calculator.cpp /usr/lib/libgtest.a /usr/lib/libgtest_main.a
    ./test_calculator

# 클린 타겟
clean:
    rm -f main test_calculator
