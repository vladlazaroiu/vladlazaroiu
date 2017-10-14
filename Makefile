
CC = gcc

TARGET = test
BUILD_OBJ = $(CC) $(CFLAGS) -c $< -o $@

all: $(TARGET)

$(TARGET): test.o
	$(CC) $^ -o $@ $(LDFLAGS) $(LDLIBS)

test.o: test.c
	$(BUILD_OBJ)

clean:
	rm -fr *.o $(TARGET)
