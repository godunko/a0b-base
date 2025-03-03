 [![Alire](https://img.shields.io/endpoint?url=https://alire.ada.dev/badges/a0b_base.json)](https://alire.ada.dev/crates/a0b_base.html)
 
# A0B Base Components

This crate provides root packages for A0B's packages hierarchy and some components that might be useful for many applications, even outside of the embedded projects, including:

 * `Integer_*` and `Unsigned_*` types of different sizes (1..32 bits, 64 bits) and shift/rotate oprtations for unsigned types (of size 8/16/32/64 bits) in the [`A0B.Types`](https://github.com/godunko/a0b-base/blob/main/source/a0b-types.ads) package
 * `Integer_*` and `Unsigned_*` type of size 16/32 in "big-endian" format [`A0B.Types.Big_Endian`](https://github.com/godunko/a0b-base/blob/main/source/a0b-types-big_endian.ads) to use in low level specifications
 * `Unsigned_*_Array` types in the [`A0B.Types.Arrays`](https://github.com/godunko/a0b-base/blob/main/source/a0b-types-arrays.ads) package
 * Bindings to GCC's builtins (`bswap`, `clz`, `ffs`, etc.) in the [`A0B.Types.GCC_Builtins`](https://github.com/godunko/a0b-base/blob/main/source/a0b-types-gcc_builtins.ads) package
 * Set of type declarations to be used with SVD2Ada code generator in the [`A0B.Types.SVD`](https://github.com/godunko/a0b-base/blob/main/source/a0b-types-svd.ads) package
