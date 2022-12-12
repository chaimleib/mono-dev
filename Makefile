PROJ = mono-dev
TARGET = hello

SRC = src/$(TARGET).cs
EXE = lib/$(PROJ)/$(TARGET).exe


all: $(EXE)

$(EXE): $(SRC)
	mkdir -p lib/$(PROJ)
	csc $(SRC) -out:$(EXE)

clean:
	rm -f lib/$(PROJ)/*.exe

test: $(EXE) bin/$(TARGET)
	@bin/$(TARGET)

.PHONY: run build clean
