

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


echo Name -a CraftingCost
echo Name -a MapProperty

echo Name -a CarvedResourceData
echo Name -a GemResourceData
echo Name -a VeinResourceData

echo Name -a /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor
echo Name -a RES_CARVED_Bismor
echo Name -a /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite
echo Name -a RES_CARVED_Magnite
echo Name -a /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite
echo Name -a RES_CARVED_Umanite
echo Name -a /Game/GameElements/Resources/Embedded/EnorPearl/RES_EMBED_Enor
echo Name -a RES_EMBED_Enor
echo Name -a /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz
echo Name -a RES_EMBED_Jadiz
echo Name -a /Game/GameElements/Resources/Veins/RES_VEIN_Croppa
echo Name -a RES_VEIN_Croppa

echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Embedded/EnorPearl/RES_EMBED_Enor 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Veins/RES_VEIN_Croppa 0

echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor 0 RES_CARVED_Bismor 0
echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite 0 RES_CARVED_Magnite 0
echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite 0 RES_CARVED_Umanite 0
echo Import -a /Script/FSD GemResourceData /Game/GameElements/Resources/Embedded/EnorPearl/RES_EMBED_Enor 0 RES_EMBED_Enor 0
echo Import -a /Script/FSD GemResourceData /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz 0 RES_EMBED_Jadiz 0
echo Import -a /Script/FSD VeinResourceData /Game/GameElements/Resources/Veins/RES_VEIN_Croppa 0 RES_VEIN_Croppa 0


echo ExportChange -r -i 1 CraftingCreditsCost/Int32/0 %CraftingCreditsCost%

echo ExportChange -a -i 1 "" "CraftingCost MapProperty ObjectProperty FloatProperty"
echo ExportChange -a -i 1 CraftingCost/Array/1 ""
echo ExportChange -a -i 1 CraftingCost/Array/1 ""
echo ExportChange -a -i 1 CraftingCost/Array/1 ""
echo ExportChange -a -i 1 CraftingCost/Array/1 ""
echo ExportChange -a -i 1 CraftingCost/Array/1 ""
echo ExportChange -a -i 1 CraftingCost/Array/1 ""

echo ExportChange -r -i 1 CraftingCost/Array/1/0/ObjectIndex/0 "RES_CARVED_Bismor 0"
echo ExportChange -r -i 1 CraftingCost/Array/1/0/Float32/0 %CostBismor%
echo ExportChange -r -i 1 CraftingCost/Array/1/1/ObjectIndex/0 "RES_CARVED_Magnite 0"
echo ExportChange -r -i 1 CraftingCost/Array/1/1/Float32/0 %CostMagnite%
echo ExportChange -r -i 1 CraftingCost/Array/1/2/ObjectIndex/0 "RES_CARVED_Umanite 0"
echo ExportChange -r -i 1 CraftingCost/Array/1/2/Float32/0 %CostUmanite%
echo ExportChange -r -i 1 CraftingCost/Array/1/3/ObjectIndex/0 "RES_EMBED_Enor 0"
echo ExportChange -r -i 1 CraftingCost/Array/1/3/Float32/0 %CostEnorPearl%
echo ExportChange -r -i 1 CraftingCost/Array/1/4/ObjectIndex/0 "RES_EMBED_Jadiz 0"
echo ExportChange -r -i 1 CraftingCost/Array/1/4/Float32/0 %CostJadiz%
echo ExportChange -r -i 1 CraftingCost/Array/1/5/ObjectIndex/0 "RES_VEIN_Croppa 0"
echo ExportChange -r -i 1 CraftingCost/Array/1/5/Float32/0 %CostCroppa%



echo File Paintjobs_ArmorDefaults/VAN_ArmorMat_%ArmorName%_Default.uasset

echo Name -r /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_Driller_MK2Default /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_%ArmorName%_Default
echo Name -r VAN_ArmorMat_Driller_MK2Default VAN_ArmorMat_%ArmorName%_Default

echo Name -r /Game/Character/Vanity2/Armor/VAN_ArmorDriller_MK2 /Game/Character/Vanity2/Armor/VAN_%ArmorName%
echo Name -r VAN_ArmorDriller_MK2 VAN_%ArmorName%

echo ExportChange -r -i 1 SaveGameID/GUID/1 %PJProgressionGUID%
