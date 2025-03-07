--
--  Copyright (C) 2025, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  This package provides base integer and modular types of different sizes
--  with "big-endian" order of bytes.
--
--  It is GNAT specific version.

with System;

package A0B.Types.Big_Endian
  with Pure, No_Elaboration_Code_All
is

   type Unsigned_16 is record
      Value : A0B.Types.Unsigned_16;
   end record
     with Size                 => 16,
          Bit_Order            => System.High_Order_First,
          Scalar_Storage_Order => System.High_Order_First;

   for Unsigned_16 use record
      Value at 0 range 0 .. 15;
   end record;

   function "="
     (Left  : A0B.Types.Big_Endian.Unsigned_16;
      Right : A0B.Types.Unsigned_16) return Boolean;
   --  XXX GCC 14: Can't be declared as expression function or inlines due to
   --  bug in the compiler.

   function "="
     (Left  : A0B.Types.Unsigned_16;
      Right : A0B.Types.Big_Endian.Unsigned_16)
      return Boolean;  --  with Inline_Always;
   --  XXX GCC 14: Can't be declared as expression function or inlines due to
   --  bug in the compiler.

   type Unsigned_24 is record
      Value : A0B.Types.Unsigned_24;
   end record
     with Size                 => 24,
          Bit_Order            => System.High_Order_First,
          Scalar_Storage_Order => System.High_Order_First;

   for Unsigned_24 use record
      Value at 0 range 0 .. 23;
   end record;

   function "="
     (Left  : A0B.Types.Big_Endian.Unsigned_24;
      Right : A0B.Types.Unsigned_24) return Boolean;
   --  XXX GCC 14: Can't be declared as expression function or inlines due to
   --  bug in the compiler.

   function "="
     (Left  : A0B.Types.Unsigned_24;
      Right : A0B.Types.Big_Endian.Unsigned_24)
      return Boolean;  --  with Inline_Always;
   --  XXX GCC 14: Can't be declared as expression function or inlines due to
   --  bug in the compiler.

   type Unsigned_32 is record
      Value : A0B.Types.Unsigned_32;
   end record
     with Size                 => 32,
          Bit_Order            => System.High_Order_First,
          Scalar_Storage_Order => System.High_Order_First;

   for Unsigned_32 use record
      Value at 0 range 0 .. 31;
   end record;

   function "="
     (Left  : A0B.Types.Big_Endian.Unsigned_32;
      Right : A0B.Types.Unsigned_32) return Boolean;
   --  XXX GCC 14: Can't be declared as expression function or inlines due to
   --  bug in the compiler.

   function "="
     (Left  : A0B.Types.Unsigned_32;
      Right : A0B.Types.Big_Endian.Unsigned_32)
      return Boolean;  --  with Inline_Always;
   --  XXX GCC 14: Can't be declared as expression function or inlines due to
   --  bug in the compiler.

end A0B.Types.Big_Endian;
