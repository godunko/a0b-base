 [![Alire](https://img.shields.io/endpoint?url=https://alire.ada.dev/badges/a0b_base.json)](https://alire.ada.dev/crates/a0b_base.html)
 
# A0B Base Components

This crate provides root packages for A0B's packages hierarchy and some components that might be useful for many applications, even outside of the embedded projects, including:

 * `Integer_*` and `Unsigned_*` types of different sizes (1..32 bits, 64 bits) and shift/rotate oprtations for unsigned types (of size 8/16/32/64 bits) in the [`A0B.Types`](https://github.com/godunko/a0b-base/blob/main/source/a0b-types.ads) package.
 * Bindings to GCC's builtins (`bswap`, `clz`, `ffs`, etc.) in the [A0B.Types.GCC_Builtins](https://github.com/godunko/a0b-base/blob/main/source/a0b-types-gcc_builtins.ads) package.
