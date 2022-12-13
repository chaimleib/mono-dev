# mono-dev

A test of developing C# using unix-like environments.

## Build and Run
### Docker
#### Prerequisites
On macOS, requires `colima` and `docker` (not the cask).

Here, `colima` replaces Docker Desktop, which has a license less favorable for commercial use.

```bash
brew install docker colima
colima start
```

#### Build and Run
```bash
docker build -t mono-dev . &&
  docker run -it --rm mono-dev
```

Alternatively,
```bash
make docker
```

### Makefile

```bash
make
bin/hello
```

Alternatively,

```bash
make run
```

### Manual
#### Prerequisites
On macOS, requires mono.

```bash
brew install mono
```

#### Build and Run
The `csc` command compiles to a `.exe` bytecode file. `mono` executes it.

```bash
csc src/hello.cs -out:hello.exe
mono hello.exe
```

## Plans
* Use Autoconf
