.PHONY: format clean build run all

TARGET = traffic_simulation

all: format clean build run

format:
	clang-format -i -style=Google src/*.cpp src/*.h

clean:
	rm -rf build

build:
	mkdir -p build
	cd build && cmake .. && make

run:
	cd build && ./$(TARGET)

clean-build: clean build
