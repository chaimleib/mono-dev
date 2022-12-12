# mono-dev

A test of developing C# using unix-like environments.

## Prerequisites
On macOS, requires mono.

```bash
brew install mono
```

## Build and Run
### Makefile
```bash
make
bin/hello
```

### Manual
The `csc` command compiles to a `.exe` bytecode file. `mono` executes it.

```bash
csc src/hello.cs -out:hello.exe
mono hello.exe
```

## Plans
* Use Autoconf
* Dockerize, using tooling that is free for individual and commercial use.
