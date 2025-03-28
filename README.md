# Daedalus

<p align="center">
  <img alt="Daedalus drawing" src="assets/images/BannerDaedalus.png" width="95%" height="auto"/></br>
</p>

Daedalus is an LLVM pass that maps instructions to program slices. Our goal is to use program slices as a unit of program compression by outlining common slices, thereby making code shorter.

# Table of Contents

- [Documentation](#documentation)
- [Building](#building)
- [Running](#running)

## Documentation

To generate the project's documentation, execute the following command from the root directory of the repository:

```shell
$ doxygen
```

The complete documentation will be generated inside the `docs/` folder. To view it, open `docs/html/index.html` in your web browser.

## Building

Daedalus is an out-of-tree LLVM pass. Therefore, you can compile and install it as a library by doing the following:

```shell
$ mkdir build
$ cd build
$ cmake -DLLVM_DIR={path_to_llvm_project} ../
$ cmake --build .
```

**Disclaimer**: This pass depends on a custom fork of [LLVM 17](https://github.com/Casperento/llvm-project/tree/merge-functions-pass).

## Running

For a given test file name (without its extension), the following files are created inside the `build/tests/` folder:

Test Name: `test.c`
- `test.ll`: IR file created before running Daedalus;
- `test.d.ll`: IR file created after running Daedalus;
- `test.bin`: executable created before running Daedalus;
- `test.d.bin`: executable created after running Daedalus;

If you prefer to run the pass directly, you can simply do the following:

```shell
$ opt -passes=mem2reg,lcssa -S {path_to_ll_file} -o {path_to_output_ll_file}
$ opt -passes=daedalus -load-pass-plugin=path/to/lib/libdaedalus.so -S {path_to_ll_file} -o {path_to_output_ll_file} 2>&1
```

### Visualize Generated Slices

```bash
$ opt -load-pass-plugin=path/to/lib/libdaedalus.so -passes=daedalus -dump-dot {path_to_ll_file}
```
Here's the result of the running above command assuming its ran on a source file named `test.ll` and the Daedalus path add a new function slice named **slice_foo**:

-  `$(pwd)/test.ll.dump_dot/`: A new directory
- `$(pwd)/test.ll.dump_dot/slice_foo.dot`: **slice_foo** CFG in DOT format

Now that slice_foo.dot is generated we can visualize with graphviz by running the following command: 
```bash
dot -Tpng slice_foo.dot -o slice_foo.png
```

### Tests

After building Daedalus, you can test it using the source files inside the `tests/` folder.

Run the following commands to run tests:

```shell
$ cd build
$ ctest
```
