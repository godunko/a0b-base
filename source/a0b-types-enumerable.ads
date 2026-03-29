--
--  Copyright (C) 2026, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  This package provides "enumerable" types for different sizes. Each type
--  has a finite set of integer values, thus can be used as an index for
--  arrays and case statements. However, these types does not have any
--  arithmetic and bitwise logical operations defined, so they cannot be used
--  for calculations.

package A0B.Types.Enumerable
  with Pure, No_Elaboration_Code_All
is

   type Enumerable_2 is mod 2 ** 2 with Size => 2;
   type Enumerable_3 is mod 2 ** 3 with Size => 3;
   type Enumerable_4 is mod 2 ** 4 with Size => 4;
   type Enumerable_5 is mod 2 ** 5 with Size => 5;
   type Enumerable_6 is mod 2 ** 6 with Size => 6;
   type Enumerable_7 is mod 2 ** 7 with Size => 7;
   type Enumerable_8 is mod 2 ** 8 with Size => 8;

   overriding function "+"
     (Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "-"
     (Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "not"
     (Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "+"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "-"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "*"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "/"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "**"
     (Left  : Enumerable_2; Right : Natural) return Enumerable_2 is abstract;
   overriding function "mod"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "rem"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "and"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "or"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;
   overriding function "xor"
     (Left  : Enumerable_2;
      Right : Enumerable_2) return Enumerable_2 is abstract;

   overriding function "+"
     (Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "-"
     (Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "not"
     (Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "+"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "-"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "*"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "/"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "**"
     (Left  : Enumerable_3; Right : Natural) return Enumerable_3 is abstract;
   overriding function "mod"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "rem"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "and"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "or"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;
   overriding function "xor"
     (Left  : Enumerable_3;
      Right : Enumerable_3) return Enumerable_3 is abstract;

   overriding function "+"
     (Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "-"
     (Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "not"
     (Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "+"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "-"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "*"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "/"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "**"
     (Left  : Enumerable_4; Right : Natural) return Enumerable_4 is abstract;
   overriding function "mod"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "rem"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "and"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "or"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;
   overriding function "xor"
     (Left  : Enumerable_4;
      Right : Enumerable_4) return Enumerable_4 is abstract;

   overriding function "+"
     (Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "-"
     (Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "not"
     (Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "+"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "-"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "*"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "/"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "**"
     (Left  : Enumerable_5; Right : Natural) return Enumerable_5 is abstract;
   overriding function "mod"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "rem"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "and"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "or"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;
   overriding function "xor"
     (Left  : Enumerable_5;
      Right : Enumerable_5) return Enumerable_5 is abstract;

   overriding function "+"
     (Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "-"
     (Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "not"
     (Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "+"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "-"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "*"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "/"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "**"
     (Left  : Enumerable_6; Right : Natural) return Enumerable_6 is abstract;
   overriding function "mod"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "rem"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "and"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "or"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;
   overriding function "xor"
     (Left  : Enumerable_6;
      Right : Enumerable_6) return Enumerable_6 is abstract;

   overriding function "+"
     (Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "-"
     (Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "not"
     (Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "+"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "-"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "*"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "/"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "**"
     (Left  : Enumerable_7; Right : Natural) return Enumerable_7 is abstract;
   overriding function "mod"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "rem"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "and"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "or"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;
   overriding function "xor"
     (Left  : Enumerable_7;
      Right : Enumerable_7) return Enumerable_7 is abstract;

   overriding function "+"
     (Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "-"
     (Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "+"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "-"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "*"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "/"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "**"
     (Left  : Enumerable_8; Right : Natural) return Enumerable_8 is abstract;
   overriding function "mod"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "rem"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "not"
     (Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "and"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "or"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;
   overriding function "xor"
     (Left  : Enumerable_8;
      Right : Enumerable_8) return Enumerable_8 is abstract;

end A0B.Types.Enumerable;