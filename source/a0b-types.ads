--
--  Copyright (C) 2024, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  This package provides base integer and modular types of different sizes.
--
--  It is GNAT specific version, some subprograms are bound to GCC intrinsics.

pragma Ada_2022;

package A0B.Types is

   pragma Pure;

   --  Unsigned types.

   type Unsigned_1  is mod 2 ** 1 with Size => 1;
   type Unsigned_2  is mod 2 ** 2 with Size => 2;
   type Unsigned_3  is mod 2 ** 3 with Size => 3;
   type Unsigned_4  is mod 2 ** 4 with Size => 4;
   type Unsigned_5  is mod 2 ** 5 with Size => 5;
   type Unsigned_6  is mod 2 ** 6 with Size => 6;
   type Unsigned_7  is mod 2 ** 7 with Size => 7;
   type Unsigned_8  is mod 2 ** 8 with Size => 8;
   type Unsigned_9  is mod 2 ** 9 with Size => 9;
   type Unsigned_10 is mod 2 ** 10 with Size => 10;
   type Unsigned_11 is mod 2 ** 11 with Size => 11;
   type Unsigned_12 is mod 2 ** 12 with Size => 12;
   type Unsigned_13 is mod 2 ** 13 with Size => 13;
   type Unsigned_14 is mod 2 ** 14 with Size => 14;
   type Unsigned_15 is mod 2 ** 15 with Size => 15;
   type Unsigned_16 is mod 2 ** 16 with Size => 16;
   type Unsigned_17 is mod 2 ** 17 with Size => 17;
   type Unsigned_18 is mod 2 ** 18 with Size => 18;
   type Unsigned_19 is mod 2 ** 19 with Size => 19;
   type Unsigned_20 is mod 2 ** 20 with Size => 20;
   type Unsigned_21 is mod 2 ** 21 with Size => 21;
   type Unsigned_22 is mod 2 ** 22 with Size => 22;
   type Unsigned_23 is mod 2 ** 23 with Size => 23;
   type Unsigned_24 is mod 2 ** 24 with Size => 24;
   type Unsigned_25 is mod 2 ** 25 with Size => 25;
   type Unsigned_26 is mod 2 ** 26 with Size => 26;
   type Unsigned_27 is mod 2 ** 27 with Size => 27;
   type Unsigned_28 is mod 2 ** 28 with Size => 28;
   type Unsigned_29 is mod 2 ** 29 with Size => 29;
   type Unsigned_30 is mod 2 ** 30 with Size => 30;
   type Unsigned_31 is mod 2 ** 31 with Size => 31;
   type Unsigned_32 is mod 2 ** 32 with Size => 32;

   function Shift_Left
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8
      with Import, Convention => Intrinsic;

   function Shift_Right
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8
      with Import, Convention => Intrinsic;

   function Shift_Right_Arithmetic
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8
      with Import, Convention => Intrinsic;

   function Rotate_Left
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8
      with Import, Convention => Intrinsic;

   function Rotate_Right
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8
      with Import, Convention => Intrinsic;

   function Shift_Left
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16
      with Import, Convention => Intrinsic;

   function Shift_Right
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16
      with Import, Convention => Intrinsic;

   function Shift_Right_Arithmetic
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16
      with Import, Convention => Intrinsic;

   function Rotate_Left
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16
      with Import, Convention => Intrinsic;

   function Rotate_Right
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16
      with Import, Convention => Intrinsic;

   function Shift_Left
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32
      with Import, Convention => Intrinsic;

   function Shift_Right
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32
      with Import, Convention => Intrinsic;

   function Shift_Right_Arithmetic
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32
      with Import, Convention => Intrinsic;

   function Rotate_Left
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32
      with Import, Convention => Intrinsic;

   function Rotate_Right
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32
      with Import, Convention => Intrinsic;

end A0B.Types;