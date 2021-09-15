

echo File SK_Vanity_%ArmorName%.uasset

echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002 /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%
echo Name -r SK_Vanity_ArmorDriller002 SK_Vanity_%ArmorName%


IF %UseBeard%==TRUE (
	echo File SK_Vanity_%ArmorName%_Beard.uasset
	
	echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002_Beard /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%_Beard
	echo Name -r SK_Vanity_ArmorDriller002_Beard SK_Vanity_%ArmorName%_Beard
	)

echo File SK_Vanity_%ArmorName%_FP.uasset

echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002_FP /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%_FP
echo Name -r SK_Vanity_ArmorDriller002_FP SK_Vanity_%ArmorName%_FP


echo File VAN_%ArmorName%.uasset

echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002 /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%
echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002.SK_Vanity_ArmorDriller002 /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%.SK_Vanity_%ArmorName%


IF %UseBeard%==TRUE (
	echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002_Beard /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%_Beard
	echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002_Beard.SK_Vanity_ArmorDriller002_Beard /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%_Beard.SK_Vanity_%ArmorName%_Beard
) ELSE (
	echo ExportChange -d -i 1 BeardCompatibleMesh ""
)
@echo off

echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002_FP /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%_FP
echo Name -r /Game/Character/Vanity2/Armor/SK_Vanity_ArmorDriller002_FP.SK_Vanity_ArmorDriller002_FP /Game/Character/Vanity2/Armor/SK_Vanity_%ArmorName%_FP.SK_Vanity_%ArmorName%_FP

echo Name -r /Game/Character/Vanity2/Armor/VAN_ArmorDriller_MK2 /Game/Character/Vanity2/Armor/VAN_%ArmorName%
echo Name -r VAN_ArmorDriller_MK2 VAN_%ArmorName%

echo Name -r /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_Driller_MK2Default /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_%ArmorName%_Default
echo Name -r VAN_ArmorMat_Driller_MK2Default VAN_ArmorMat_%ArmorName%_Default

echo ExportChange -r -i 1 ItemName/TextProperty/0/9/SPNTS/0 %UserVisibleNameGUID%
echo ExportChange -r -i 1 ItemName/TextProperty/0/46/SPNTS/0 "%UserVisibleName%"

echo ExportChange -r -i 1 ItemDescription/TextProperty/0/9/SPNTS/0 %UserVisibleDescGUID%
echo ExportChange -r -i 1 ItemDescription/TextProperty/0/46/SPNTS/0 "%UserVisibleDesc%"

echo ExportChange -r -i 1 SaveGameID/GUID/1 %ProgressionGUID%

echo File Paintjobs_ArmorDefaults/VAN_ArmorMat_%ArmorName%_Default.uasset

echo Name -r /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_Driller_MK2Default /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_%ArmorName%_Default
echo Name -r VAN_ArmorMat_Driller_MK2Default VAN_ArmorMat_%ArmorName%_Default

echo Name -r /Game/Character/Vanity2/Armor/VAN_ArmorDriller_MK2 /Game/Character/Vanity2/Armor/VAN_%ArmorName%
echo Name -r VAN_ArmorDriller_MK2 VAN_%ArmorName%

echo ExportChange -r -i 1 SaveGameID/GUID/1 %PJProgressionGUID%
