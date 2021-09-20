echo File SK_Vanity_Headwear_%InternalHatName%.uasset

echo Name -r /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_HelmetFullface01_CorporateMarine /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_%InternalHatName%
echo Name -r SK_Vanity_Headwear_HelmetFullface01_CorporateMarine SK_Vanity_Headwear_%InternalHatName%

echo File VAN_Headwear_%InternalHatName%.uasset

echo Name -r /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_HelmetFullface01_CorporateMarine /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_%InternalHatName%
echo Name -r /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_HelmetFullface01_CorporateMarine.SK_Vanity_Headwear_HelmetFullface01_CorporateMarine /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_%InternalHatName%.SK_Vanity_Headwear_%InternalHatName%

echo Name -r /Game/Character/Vanity2/Headwear/VAN_Headwear_CorporateMarine /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName%
echo Name -r VAN_Headwear_CorporateMarine VAN_Headwear_%InternalHatName%


echo Name -r EHeadVanityType::HeadGearOnly_UseArmorMaterial %HeadVanityType%
echo Name -r ECharacterHeadMesh::ThichNeckOnly %HeadMesh%

echo Name -a HideEyebrows
echo Name -a HideSideburns
echo Name -a HideMoustache

echo ExportChange -a -i 1 "" "HideEyebrows BoolProperty"
echo ExportChange -a -i 1 "" "HideSideburns BoolProperty"
echo ExportChange -a -i 1 "" "HideMoustache BoolProperty"

echo ExportChange -r -i 1 HideEyebrows/Bool/0 %HideEyebrows%
echo ExportChange -r -i 1 HideSideburns/Bool/0 %HideSideburns%
echo ExportChange -r -i 1 HideMoustache/Bool/0 %HideMoustache%
echo ExportChange -r -i 1 HideBeard/Bool/0 %HideBeard%
echo ExportChange -r -i 1 HideAll/Bool/0 %HideAll%
echo ExportChange -r -i 1 HideHead/Bool/0 %HideHead%

IF UseMaterialOverride==TRUE (
	echo Name -a MaterialOverride
	
	echo Name -a /Game/Character/Vanity2/Headwear/%MaterialOverride%
	echo Name -a /Game/Character/Vanity2/Headwear/%MaterialOverride%.%MaterialOverride%
	
	echo ExportChange -a -i 1 "" "MaterialOverride SoftObjectProperty"
	echo ExportChange -r -i 1 MaterialOverride/Name/0 "/Game/Character/Vanity2/Headwear/%MaterialOverride%.%MaterialOverride% 0"
)

echo ExportChange -r -i 1 ItemName/TextProperty/0/10/SPNTS/0 %UserVisibleNameGUID%
echo ExportChange -r -i 1 ItemName/TextProperty/0/47/SPNTS/0 "%UserVisibleName%"

echo ExportChange -r -i 1 ItemDescription/TextProperty/0/10/SPNTS/0 %UserVisibleDescGUID%
echo ExportChange -r -i 1 ItemDescription/TextProperty/0/47/SPNTS/0 "%UserVisibleDesc%"

echo ExportChange -r -i 1 SaveGameID/GUID/1 %ProgressionGUID%


echo Name -a CarvedResourceData
echo Name -a VeinResourceData

echo Name -a /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor
echo Name -a RES_CARVED_Bismor
echo Name -a /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite
echo Name -a RES_CARVED_Magnite
echo Name -a /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite
echo Name -a RES_CARVED_Umanite
echo Name -a /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz
echo Name -a RES_EMBED_Jadiz
echo Name -a /Game/GameElements/Resources/Veins/RES_VEIN_Croppa
echo Name -a RES_VEIN_Croppa

echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Veins/RES_VEIN_Croppa 0

echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor 0 RES_CARVED_Bismor 0
echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite 0 RES_CARVED_Magnite 0
echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite 0 RES_CARVED_Umanite 0
echo Import -a /Script/FSD GemResourceData /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz 0 RES_EMBED_Jadiz 0
echo Import -a /Script/FSD VeinResourceData /Game/GameElements/Resources/Veins/RES_VEIN_Croppa 0 RES_VEIN_Croppa 0


echo ExportChange -r -i 1 CraftingCreditsCost/Int32/0 %CraftingCreditsCost%

echo ExportChange -d -i 1 CraftingCost ""
echo ExportChange -a -i 1 "" "CraftingCost MapProperty ObjectProperty FloatProperty"


IF %CostBismor% NEQ 0 (
	echo ExportChange -a -i 1 CraftingCost/Array/1 ""
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/ObjectIndex/0 "RES_CARVED_Bismor 0"
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/Float32/0 %CostBismor%
)
IF %CostMagnite% NEQ 0 (
	echo ExportChange -a -i 1 CraftingCost/Array/1 ""
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/ObjectIndex/0 "RES_CARVED_Magnite 0"
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/Float32/0 %CostMagnite%
)
IF %CostUmanite% NEQ 0 (	
	echo ExportChange -a -i 1 CraftingCost/Array/1 ""
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/ObjectIndex/0 "RES_CARVED_Umanite 0"
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/Float32/0 %CostUmanite%
)
IF %CostEnorPearl% NEQ 0 (
	echo ExportChange -a -i 1 CraftingCost/Array/1 ""
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/ObjectIndex/0 "RES_EMBED_Enor 0"
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/Float32/0 %CostEnorPearl%
)
IF %CostJadiz% NEQ 0 (
	echo ExportChange -a -i 1 CraftingCost/Array/1 ""
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/ObjectIndex/0 "RES_EMBED_Jadiz 0"
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/Float32/0 %CostJadiz%
)
IF %CostCroppa% NEQ 0 (
	echo ExportChange -a -i 1 CraftingCost/Array/1 ""
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/ObjectIndex/0 "RES_VEIN_Croppa 0"
	echo ExportChange -r -i 1 CraftingCost/Array/1/-1/Float32/0 %CostCroppa%
)