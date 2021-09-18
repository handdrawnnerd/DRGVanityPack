@echo off

CALL DVP_DAUM_AUTOMATION_Hat_Generation_config.cmd

COPY SK_Vanity_Headwear_HelmetFullface01_CorporateMarine.uasset SK_Vanity_Headwear_%InternalHatName%.uasset
COPY SK_Vanity_Headwear_HelmetFullface01_CorporateMarine.uexp SK_Vanity_Headwear_%InternalHatName%.uexp

COPY VAN_Headwear_CorporateMarine.uasset VAN_Headwear_%InternalHatName%.uasset
COPY VAN_Headwear_CorporateMarine.uexp VAN_Headwear_%InternalHatName%.uexp


CALL GenerateLocalDS > DVP_DAUM_AUTOMATION_Local.ds

..\..\..\..\..\DAUM\daum.exe -s DVP_DAUM_AUTOMATION_Local.ds

CALL GenerateMergingDS > ..\_VanitySets\HeadwearMerging_%InternalHatName%.ds

SET InternalHatName=

SET HeadVanityType=
SET HeadMesh=

SET HideBeard=
SET HideAll=
SET HideHead=

SET UserVisibleName=
SET UserVisibleDesc=

SET UserVisibleNameGUID=
SET UserVisibleDescBUID=

SET ProgressionGUID=