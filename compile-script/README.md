# Compile Script

This is a minimal compile script to automate some commands to compile ebrew code.

It reads in files and `cat`s them out to a single `unit.eb` file.

Which is then passed to `ebrew` (assumed to be on path) and a `unit.s` file is generated. Then the `unit.s` file is passed `as` and a `unit.o` file is generated.

The `unit.o` file is then passed to `ld` and generates a binary `a.out` in the directory script was written in.

The unit files are then moved to a `ebtemp` folder (also in the directory where script was ran).

Possible use of this is inspection of files generated or debugging.

The script always clears out the `ebtemp` directory if it exists before actually doing anything.

> The script does minimal error checking. Its just for testing/automation purposes only.
