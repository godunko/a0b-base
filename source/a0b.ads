--
--  Copyright (C) 2024, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package A0B
  with Pure, No_Elaboration_Code_All
is

   type Operation_Status is
     (Active,    --  Active
      Success,   --  Completed successfully
      Failure);  --  Failed
   --  Status of the requested operation.
   --  It is declared here to make it available for all drivers.

end A0B;
