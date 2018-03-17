TARGET=ville

all: run

build: 
	gprbuild -P $(TARGET).gpr

run: build
	./bin/$(TARGET)

clean:
	gprclean -P $(TARGET).gpr
