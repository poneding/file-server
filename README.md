# file-server

A simple file server that serves files from a directory.

## Install

```bash
go install github.com/poneding/file-server@latest
```

## Usage

Two ways to specify the directory to serve files from:

1. Specify the directory to serve files from as an argument.

```bash
file-server /path/to/files
```

2. Specify the directory to serve files from with the `FS_PATH` environment variable.

```bash
FS_PATH=/path/to/files file-server
```

Then, open your browser and navigate to `http://localhost:8080/` to view the files.
