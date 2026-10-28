--
--  Copyright (C) 2024-2026, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Conversion between `Address` and access to unconstrained limited private
--  type.

pragma Restrictions (No_Elaboration_Code);

private with System.Address_To_Access_Conversions;

generic
   type Element (<>) is limited private;

package A0B.Storage.Address_To_Access_Conversions
  with Preelaborate,
       SPARK_Mode => On
is

   type Element_Access is access all Element;

   function As_Address (Item : Element_Access) return Address
     with SPARK_Mode => Off;
   --  Pointer-to-address conversion is not supported by SPARK.

   function As_Access (Item : Address) return Element_Access
     with Global  => null,
          Depends => (As_Access'Result => Item);
   --  For a non-null result, SPARK assumes validity of the designated object
   --  and absence of aliases.

private

   package Conversions is
     new System.Address_To_Access_Conversions (Element);

   function As_Access (Item : Address) return Element_Access
   is
     (Element_Access
        (Conversions.To_Pointer
           (System.Storage_Elements.To_Address
              (System.Storage_Elements.Integer_Address (Item)))));

   function As_Address (Item : Element_Access) return Address
   is
     (Address
        (System.Storage_Elements.To_Integer
           (Conversions.To_Address (Conversions.Object_Pointer (Item)))))
     with SPARK_Mode => Off;

end A0B.Storage.Address_To_Access_Conversions;
