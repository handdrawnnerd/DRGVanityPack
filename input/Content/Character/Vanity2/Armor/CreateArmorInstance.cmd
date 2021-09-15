@echo off

CALL DVP_DAUM_AUTOMATION_New_Armor_Instance_Config

COPY SK_Vanity_ArmorDriller002.uasset SK_Vanity_%ArmorName%.uasset
COPY SK_Vanity_ArmorDriller002.uexp SK_Vanity_%ArmorName%.uexp

IF %UseBeard%==TRUE (
	COPY SK_Vanity_ArmorDriller002_Beard.uasset SK_Vanity_%ArmorName%_Beard.uasset
	COPY SK_Vanity_ArmorDriller002_Beard.uexp SK_Vanity_%ArmorName%_Beard.uexp
	)
	
COPY SK_Vanity_ArmorDriller002_FP.uasset SK_Vanity_%ArmorName%_FP.uasset
COPY SK_Vanity_ArmorDriller002_FP.uexp SK_Vanity_%ArmorName%_FP.uexp

COPY VAN_ArmorDriller_MK2.uasset VAN_%ArmorName%.uasset
COPY VAN_ArmorDriller_MK2.uexp VAN_%ArmorName%.uexp

COPY Paintjobs_ArmorDefaults\VAN_ArmorMat_Driller_MK2Default.uasset Paintjobs_ArmorDefaults\VAN_ArmorMat_%ArmorName%_Default.uasset
COPY Paintjobs_ArmorDefaults\VAN_ArmorMat_Driller_MK2Default.uexp Paintjobs_ArmorDefaults\VAN_ArmorMat_%ArmorName%_Default.uexp

CALL GenerateLocalDS > DVP_DAUM_AUTOMATION_Local.ds

..\..\..\..\..\DAUM\daum.exe -s DVP_DAUM_AUTOMATION_Local.ds

CALL GenerateMergingDS > ..\_VanitySets\ArmorMerging_%ArmorName%.ds

SET ArmorName=
SET ClassName=
SET UseBeard=

SET UserVisibleName=
SET UserVisibleDesc=

SET UserVisibleNameGUID=
SET UserVisibleDescBUID=

SET ProgressionGUID=
SET PJProgressionGUID=