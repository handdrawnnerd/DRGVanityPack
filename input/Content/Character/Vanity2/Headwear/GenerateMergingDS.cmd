@echo off

echo File VanitySet_Driller.uasset

echo Name -a /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName%
echo Name -a VAN_Headwear_%InternalHatName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName% 0
echo Import -a /Script/FSD HeadVanityItem /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName% 0 VAN_Headwear_%InternalHatName% 0

echo ExportChange -a -i 1 HeadItems/Array/0 ""
echo ExportChange -r -i 1 HeadItems/Array/0/-1/ObjectIndex/0 "VAN_Headwear_%InternalHatName% 0"


echo File VanitySet_Engineer.uasset

echo Name -a /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName%
echo Name -a VAN_Headwear_%InternalHatName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName% 0
echo Import -a /Script/FSD HeadVanityItem /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName% 0 VAN_Headwear_%InternalHatName% 0

echo ExportChange -a -i 1 HeadItems/Array/0 ""
echo ExportChange -r -i 1 HeadItems/Array/0/-1/ObjectIndex/0 "VAN_Headwear_%InternalHatName% 0"


echo File VanitySet_Gunner.uasset

echo Name -a /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName%
echo Name -a VAN_Headwear_%InternalHatName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName% 0
echo Import -a /Script/FSD HeadVanityItem /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName% 0 VAN_Headwear_%InternalHatName% 0

echo ExportChange -a -i 1 HeadItems/Array/0 ""
echo ExportChange -r -i 1 HeadItems/Array/0/-1/ObjectIndex/0 "VAN_Headwear_%InternalHatName% 0"


echo File VanitySet_Scout.uasset

echo Name -a /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName%
echo Name -a VAN_Headwear_%InternalHatName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName% 0
echo Import -a /Script/FSD HeadVanityItem /Game/Character/Vanity2/Headwear/VAN_Headwear_%InternalHatName% 0 VAN_Headwear_%InternalHatName% 0

echo ExportChange -a -i 1 HeadItems/Array/0 ""
echo ExportChange -r -i 1 HeadItems/Array/0/-1/ObjectIndex/0 "VAN_Headwear_%InternalHatName% 0"