@echo off

echo File VanitySet_Driller.uasset

echo Name -a /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName%
echo Name -a VAN_Eyebrows_%InternalEyebrowsName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName% 0
echo Import -a /Script/FSD EyeBrowsVanityItem /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName% 0 VAN_Eyebrows_%InternalEyebrowsName% 0

echo ExportChange -a -i 1 EyebrowsItems/Array/0 ""
echo ExportChange -r -i 1 EyebrowsItems/Array/0/-1/ObjectIndex/0 "VAN_Eyebrows_%InternalEyebrowsName% 0"


echo File VanitySet_Engineer.uasset

echo Name -a /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName%
echo Name -a VAN_Eyebrows_%InternalEyebrowsName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName% 0
echo Import -a /Script/FSD EyeBrowsVanityItem /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName% 0 VAN_Eyebrows_%InternalEyebrowsName% 0

echo ExportChange -a -i 1 EyebrowsItems/Array/0 ""
echo ExportChange -r -i 1 EyebrowsItems/Array/0/-1/ObjectIndex/0 "VAN_Eyebrows_%InternalEyebrowsName% 0"


echo File VanitySet_Gunner.uasset

echo Name -a /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName%
echo Name -a VAN_Eyebrows_%InternalEyebrowsName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName% 0
echo Import -a /Script/FSD EyeBrowsVanityItem /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName% 0 VAN_Eyebrows_%InternalEyebrowsName% 0

echo ExportChange -a -i 1 EyebrowsItems/Array/0 ""
echo ExportChange -r -i 1 EyebrowsItems/Array/0/-1/ObjectIndex/0 "VAN_Eyebrows_%InternalEyebrowsName% 0"


echo File VanitySet_Scout.uasset

echo Name -a /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName%
echo Name -a VAN_Eyebrows_%InternalEyebrowsName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName% 0
echo Import -a /Script/FSD EyeBrowsVanityItem /Game/Character/Vanity2/Eyebrows/VAN_Eyebrows_%InternalEyebrowsName% 0 VAN_Eyebrows_%InternalEyebrowsName% 0

echo ExportChange -a -i 1 EyebrowsItems/Array/0 ""
echo ExportChange -r -i 1 EyebrowsItems/Array/0/-1/ObjectIndex/0 "VAN_Eyebrows_%InternalEyebrowsName% 0"