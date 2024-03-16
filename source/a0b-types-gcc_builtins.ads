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

end A0B.Types.GCC_Builtins;