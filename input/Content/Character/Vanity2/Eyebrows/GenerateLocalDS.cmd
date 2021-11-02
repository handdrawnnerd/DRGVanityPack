echo File VAN_Eyebrows_%InternalEyebrowsName%.uasset

echo Name -a /Game/Character/Vanity2/Eyebrows/SK_Vanity_Eyebrows_%InternalEyebrowsName%
echo Name -a /Game/Character/Vanity2/Eyebrows/SK_Vanity_Eyebrows_%InternalEyebrowsName%.SK_Vanity_Eyebrows_%InternalEyebrowsName%

echo Name -r /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_GenerationSample /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName%
echo Name -r VAN_Eyebrows_GenerationSample VAN_Eyebrows_%InternalEyebrowsName%

echo Name -a Mesh
echo Name -a SoftObjectProperty

echo ExportChange -a -i 1 "" "Mesh SoftObjectProperty"
echo ExportChange -r -i 1 Mesh/Name/0 "/Game/Character/Vanity2/Eyebrows/SK_Vanity_Eyebrows_%InternalEyebrowsName%.SK_Vanity_Eyebrows_%InternalEyebrowsName% 0"


echo ExportChange -r -i 1 ItemName/TextProperty/0/9/SPNTS/0 "%UserVisibleName%"
echo ExportChange -r -i 1 ItemDescription/TextProperty/0/9/SPNTS/0 "%UserVisibleDesc%"

echo ExportChange -r -i 1 SaveGameID/GUID/1 %ProgressionGUID%


echo Name -a MapProperty
echo Name -a FloatProperty
echo Name -a IntProperty

echo Name -a CraftingCost
echo Name -a CraftingCreditsCost

echo Name -a CarvedResourceData
echo Name -a VeinResourceData
echo Name -a GemResourceData

echo Name -a /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor
echo Name -a RES_CARVED_Bismor
echo Name -a /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite
echo Name -a RES_CARVED_Magnite
echo Name -a /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite
echo Name -a RES_CARVED_Umanite
echo Name -a /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz
echo Name -a RES_EMBED_Jadiz
echo Name -a /Game/GameElements/Resources/Embedded/EnorPearl/RES_EMBED_Enor
echo Name -a RES_EMBED_Enor
echo Name -a /Game/GameElements/Resources/Veins/RES_VEIN_Croppa
echo Name -a RES_VEIN_Croppa

echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Embedded/EnorPearl/RES_EMBED_Enor 0
echo Import -a /Script/CoreUObject Package -i 0 /Game/GameElements/Resources/Veins/RES_VEIN_Croppa 0

echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Bismor/RES_CARVED_Bismor 0 RES_CARVED_Bismor 0
echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Magnite/RES_CARVED_Magnite 0 RES_CARVED_Magnite 0
echo Import -a /Script/FSD CarvedResourceData /Game/GameElements/Resources/Carved/Umanite/RES_CARVED_Umanite 0 RES_CARVED_Umanite 0
echo Import -a /Script/FSD GemResourceData /Game/GameElements/Resources/Embedded/Gems/RES_EMBED_Jadiz 0 RES_EMBED_Jadiz 0
echo Import -a /Script/FSD GemResourceData /Game/GameElements/Resources/Embedded/EnorPearl/RES_EMBED_Enor 0 RES_EMBED_Enor 0
echo Import -a /Script/FSD VeinResourceData /Game/GameElements/Resources/Veins/RES_VEIN_Croppa 0 RES_VEIN_Croppa 0


echo ExportChange -a -i 1 "" "CraftingCreditsCost IntProperty"
echo ExportChange -r -i 1 CraftingCreditsCost/Int32/0 %CraftingCreditsCost%

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