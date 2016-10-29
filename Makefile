cc=g++
CFLAGS= -c -Wall
LDFLAGS=
SOURCES=main.cpp hello.cpp factorial.cpp
OBJECTS=$(SOURCES:.cpp=.o)
TARGET=hello
all: $(SOURCES) $(TARGET)

$(TARGET):$(OBJECTS)
	$(cc) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(cc) $(CFLAGS) $< -o $@
.PHONY:clean
clean:
	rm *.o hello