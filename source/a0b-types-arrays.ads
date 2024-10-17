--
--  Copyright (C) 2024, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  This package provides declarations of arrays of base integer/modular types.

pragma Restrictions (No_Elaboration_Code);

package A0B.Types.Arrays is

   pragma Pure;

   type Unsigned_8_Array is array (Unsigned_32 range <>) of Unsigned_8;

end A0B.Types.Arrays;
