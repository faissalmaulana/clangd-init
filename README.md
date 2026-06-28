# clangd-init

`clangd-init` is a small Bash utility that creates a `.clangd` configuration file for C-only projects.

By default, `clangd` may not treat source files as C in some projects. This tool generates a `.clangd` file that instructs `clangd` to compile files using the `-xc` flag.

The generated file is:

```yaml
# yaml-language-server: $schema=https://json.schemastore.org/clangd.json
CompileFlags:
  Add: [-xc]
```

## Installation

The installer follows the XDG convention and installs the executable to:

```text
~/.local/bin
```

Clone the repository and run:

```sh
chmod +x clangd-init/install.sh
./clangd-init/install.sh
```

Verify the installation:

```sh
which clangd-init
```

The output should be similar to:

```text
/$HOME/.local/bin/clangd-init
```

## Usage

From the root directory of your C project, run:

```sh
clangd-init
```

This creates a `.clangd` file in the current directory.

If a `.clangd` file already exists, the command exits without overwriting it.
