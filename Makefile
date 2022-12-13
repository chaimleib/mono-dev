PROJ = mono-dev
TARGET = hello

SRC = src/$(TARGET).cs
EXE = lib/$(PROJ)/$(TARGET).exe


all: $(EXE)

$(EXE): $(SRC)
	mkdir -p lib/$(PROJ)
	csc $(SRC) -out:$(EXE)

clean:
	rm -rf lib

run: $(EXE) bin/$(TARGET)
	@bin/$(TARGET)

docker:
	docker build -t mono-dev .
	docker run -it --rm mono-dev

.PHONY: run build clean docker
