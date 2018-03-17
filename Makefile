TARGET=ville

all: run

build: 
	gprbuild -P $(TARGET).gpr

run: build
	./$(TARGET)

clean:
	gprclean -P $(TARGET).gpr
