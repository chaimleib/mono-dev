# mono-dev

A test of developing C# using unix-like environments.

## Prerequisites
On macOS, requires mono.

```bash
brew install mono
```

## Running

The `csc` command compiles to a `.exe` bytecode file. `mono` executes it.

```bash
mkdir build
csc src/hello.cs -out:build/hello.exe
mono build/hello.exe
```

## Plans
* Use Autoconf
* Dockerize, using tooling that is free for individual and commercial use.
