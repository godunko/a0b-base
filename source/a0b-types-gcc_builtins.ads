--
--  Copyright (C) 2024, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Bindings for GCC builtins functions.

pragma Restrictions (No_Elaboration_Code);

package A0B.Types.GCC_Builtins is

   pragma Pure;

   function ffs (Item : A0B.Types.Integer_32) return A0B.Types.Integer_32
     with Import, Convention => Intrinsic, External_Name => "__builtin_ffs";
   --  Returns one plus the index of the least significant 1-bit of x, or if
   --   x is zero, returns zero.

   function clz (Item : A0B.Types.Unsigned_32) return A0B.Types.Integer_32
     with Import, Convention => Intrinsic, External_Name => "__builtin_clz";
   --  Returns the number of leading 0-bits in x, starting at the most
   --  significant bit position. If x is 0, the result is undefined.

   function ctz (Item : A0B.Types.Unsigned_32) return A0B.Types.Integer_32
     with Import, Convention => Intrinsic, External_Name => "__builtin_ctz";
   --  Returns the number of trailing 0-bits in x, starting at the least
   --  significant bit position. If x is 0, the result is undefined.

end A0B.Types.GCC_Builtins;