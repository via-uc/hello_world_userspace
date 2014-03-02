TARGET=hello_world
OBJECTS=hello_world.o
CC=avr32-linux-gcc
CFLAGS=-Wall -g # warnings, debugging symbols
LDFLAGS=
LIBS=

.PHONY: all
all: $(TARGET) 

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS) 

.PHONY: clean
clean:
	-$(RM) $(TARGET) $(OBJECTS) 
