TARGET=ville

all: run

build: 
	gprbuild $(TARGET).adb

run: build
	./$(TARGET)

clean:
	rm *.ali *.stdout *.stderr *.bexch *.o $(TARGET) b*