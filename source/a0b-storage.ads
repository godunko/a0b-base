--
--  Copyright (C) 2024-2026, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Alternative to integer address type definition in `System.Storage_Elements`
--  package:
--
--   * `Address` is a private type like `System.Address`
--
--   * objects of `Address` type are initialized by 0
--
--   * arithmetic operations between `Address` and `Storage_Offset` returns
--     both `Address` and `System.Address`
--
--   * conversions between `Address` and `System.Address`

pragma Ada_2022;
pragma Restrictions (No_Elaboration_Code);

with System.Storage_Elements;

package A0B.Storage
  with Pure, SPARK_Mode
is

   use type System.Address;
   use type System.Storage_Elements.Integer_Address;
   use type System.Storage_Elements.Storage_Offset;

   type Address is private
     with Preelaborable_Initialization,
          Default_Initial_Condition => As_Integer (Address) = 0;

   Null_Address : constant Address;

   subtype Storage_Offset is System.Storage_Elements.Storage_Offset;

   subtype Storage_Count is System.Storage_Elements.Storage_Count;

   function "+"
     (Left  : Address;
      Right : Storage_Offset) return Address
     with Post =>
       As_Address ("+"'Result) = As_Address (Left) + Right;

   function "+"
     (Left  : Address;
      Right : Storage_Offset) return System.Address
     with Post =>
       "+"'Result = As_Address (Left) + Right;

   function "-"
     (Left  : Address;
      Right : Storage_Offset) return Address
     with Post =>
       As_Address ("-"'Result) = As_Address (Left) - Right;

   function "-"
     (Left  : Address;
      Right : Storage_Offset) return System.Address
     with Post =>
       "-"'Result = As_Address (Left) - Right;

   function As_Address (Item : Address) return System.Address
     with Post =>
       System.Storage_Elements.To_Integer (As_Address'Result)
         = As_Integer (Item);

   function As_Address (Item : System.Address) return Address
     with Post =>
       As_Integer (As_Address'Result)
         = System.Storage_Elements.To_Integer (Item);

   function As_Integer
     (Item : Address) return System.Storage_Elements.Integer_Address;

   function As_Integer
     (Item : System.Address) return System.Storage_Elements.Integer_Address;

private

   type Address is new System.Storage_Elements.Integer_Address
     with Default_Value => 0;

   Null_Address : constant Address := 0;

   function "+" (Left : Address; Right : Storage_Offset) return Address
   is
     (Address
        (System.Storage_Elements.To_Integer
           (System.Storage_Elements.To_Address
              (System.Storage_Elements.Integer_Address (Left)) + Right)));

   function "+" (Left : Address; Right : Storage_Offset) return System.Address
   is
     (System.Storage_Elements.To_Address
        (System.Storage_Elements.Integer_Address (Left)) + Right);

   function "-" (Left : Address; Right : Storage_Offset) return Address
   is
     (Address
        (System.Storage_Elements.To_Integer
           (System.Storage_Elements.To_Address
              (System.Storage_Elements.Integer_Address (Left)) - Right)));

   function "-" (Left : Address; Right : Storage_Offset) return System.Address
   is
     (System.Storage_Elements.To_Address
        (System.Storage_Elements.Integer_Address (Left)) - Right);

   function As_Address (Item : Address) return System.Address
   is
     (System.Storage_Elements.To_Address
        (System.Storage_Elements.Integer_Address (Item)));

   function As_Address (Item : System.Address) return Address
   is (Address (System.Storage_Elements.To_Integer (Item)));

   function As_Integer
     (Item : Address) return System.Storage_Elements.Integer_Address
   is (System.Storage_Elements.Integer_Address (Item));

   function As_Integer
     (Item : System.Address) return System.Storage_Elements.Integer_Address
   is
      (System.Storage_Elements.To_Integer (Item));

end A0B.Storage;
