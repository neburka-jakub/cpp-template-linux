CXXFLAGS = -Wall -pedantic -ggdb -O0 -std=c++20
BIN = main

.PHONY: build run test clean
.DEFAULT_GOAL = build

build: $(BIN)

run: build
	./$(BIN) <input.txt

test: build
	./$(BIN) <input.txt >output.txt
	diff --strip-trailing-cr output.txt expected.txt

clean:
	rm -fv $(BIN) output.txt