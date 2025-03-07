--
--  Copyright (C) 2025, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body A0B.Types.Big_Endian is

   ---------
   -- "=" --
   ---------

   function "="
     (Left  : A0B.Types.Big_Endian.Unsigned_16;
      Right : A0B.Types.Unsigned_16) return Boolean is (Left.Value = Right);

   ---------
   -- "=" --
   ---------

   function "="
     (Left  : A0B.Types.Unsigned_16;
      Right : A0B.Types.Big_Endian.Unsigned_16)
      return Boolean is (Left = Right.Value);

   ---------
   -- "=" --
   ---------

   function "="
     (Left  : A0B.Types.Big_Endian.Unsigned_24;
      Right : A0B.Types.Unsigned_24) return Boolean is (Left.Value = Right);

   ---------
   -- "=" --
   ---------

   function "="
     (Left  : A0B.Types.Unsigned_24;
      Right : A0B.Types.Big_Endian.Unsigned_24)
      return Boolean is (Left = Right.Value);

   ---------
   -- "=" --
   ---------

   function "="
     (Left  : A0B.Types.Big_Endian.Unsigned_32;
      Right : A0B.Types.Unsigned_32) return Boolean is (Left.Value = Right);

   ---------
   -- "=" --
   ---------

   function "="
     (Left  : A0B.Types.Unsigned_32;
      Right : A0B.Types.Big_Endian.Unsigned_32)
      return Boolean is (Left = Right.Value);

end A0B.Types.Big_Endian;
