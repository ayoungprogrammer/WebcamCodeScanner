INCLUDE_FLAGS=-I/usr/local/include
CFLAGS=-c -Wall $(INCLUDE_FLAGS)
LDFLAGS= -L/usr/local/lib -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_videoio -lzbar

all: main

main: main.cpp
	$(CXX) $(CFLAGS) $(LDFLAGS) $< -o $@
