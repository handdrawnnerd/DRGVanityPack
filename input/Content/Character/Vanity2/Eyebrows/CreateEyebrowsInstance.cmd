@echo off

CALL DVP_DAUM_AUTOMATION_Eyebrows_Generation_config.cmd

COPY VAN_Eyebrows_GenerationSample.uasset VAN_Eyebrows_%InternalEyebrowsName%.uasset
COPY VAN_Eyebrows_GenerationSample.uexp VAN_Eyebrows_%InternalEyebrowsName%.uexp


CALL GenerateLocalDS > DVP_DAUM_AUTOMATION_Local.ds

..\..\..\..\..\DAUM\daum.exe -s DVP_DAUM_AUTOMATION_Local.ds

CALL GenerateMergingDS > ..\_VanitySets\EyebrowsMerging_%InternalEyebrowsName%.ds

SET InternalEyebrowsName=

SET UserVisibleName=
SET UserVisibleDesc=

SET ProgressionGUID=

SET CraftingCreditsCost=
SET CostBismor=
SET CostMagnite=
SET CostUmanite=
SET CostEnorPearl=
SET CostJadiz=
SET CostCroppa=