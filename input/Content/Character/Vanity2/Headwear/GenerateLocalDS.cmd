echo File SK_Vanity_Headwear_%InternalHatName%.uasset

echo Name -r /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_HelmetFullface01_CorporateMarine /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_%InternalHatName%
echo Name -r SK_Vanity_Headwear_HelmetFullface01_CorporateMarine SK_Vanity_Headwear_%InternalHatName%

echo File VAN_Headwear_%InternalHatName%.uasset

echo Name -r /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_HelmetFullface01_CorporateMarine /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_%InternalHatName%
echo Name -r /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_HelmetFullface01_CorporateMarine.SK_Vanity_Headwear_HelmetFullface01_CorporateMarine /Game/Character/Vanity2/Headwear/SK_Vanity_Headwear_%InternalHatName%.SK_Vanity_Headwear_%InternalHatName%

echo Name -r /Game/Character/Vanity2/Headwear/VAN_Headwear_CorporateMarine /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName%
echo Name -r VAN_Headwear_CorporateMarine VAN_Headwear_%InternalHatName%


echo ExportChange -r -i 1 HeadVanityType/Name/0 "%HeadVanityType% 0"
echo ExportChange -r -i 1 HeadMesh/Name/0 "%HeadMesh% 0"

echo ExportChange -r -i 1 HideBeard/Bool/0 %HideBeard%
echo ExportChange -r -i 1 HideAll/Bool/0 %HideAll%
echo ExportChange -r -i 1 HideHead/Bool/0 %HideHead%

echo ExportChange -r -i 1 ItemName/TextProperty/0/10/SPNTS/0 %UserVisibleNameGUID%
echo ExportChange -r -i 1 ItemName/TextProperty/0/47/SPNTS/0 "%UserVisibleName%"

echo ExportChange -r -i 1 ItemDescription/TextProperty/0/10/SPNTS/0 %UserVisibleDescGUID%
echo ExportChange -r -i 1 ItemDescription/TextProperty/0/47/SPNTS/0 "%UserVisibleDesc%"

echo ExportChange -r -i 1 SaveGameID/GUID/1 %ProgressionGUID%
