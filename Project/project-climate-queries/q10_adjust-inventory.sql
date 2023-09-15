-- Adjust inventory by sales (be concerned about idempotence) (UPDATE)
--
-- 35 points
--

-- Notes:
--
-- "Idempotent" means the result of running the update twice is
-- the same as running it once: it does the right thing and then doesn't
-- over-update if run again. Question: how are dates invovled in figuring
-- out what inventory adjustments to make?
--
-- Strategy: create SELECT that uses JOINs, etc. to plan what should be
-- changed in the Merchandise.Inventory field.

UPDATE Merchandise
SET
    Inventory = adjust. FIXME...,  -- what should new inventory be?
    FIXME  --anything else to set?
FROM (
  -- make a temporary table "adjust" to support changing inventory
) adjust
WHERE Merchandise.ID = adjust.ID;
