@echo off

echo File VanitySet_%ClassName%.uasset

echo Name -a /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_%ArmorName%_Default
echo Name -a VAN_ArmorMat_%ArmorName%_Default

echo Name -a /Game/Character/Vanity2/Armor/VAN_%ArmorName%
echo Name -a VAN_%ArmorName%

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_%ArmorName%_Default 0
echo Import -a /Script/FSD ArmorMaterialVanityItem /Game/Character/Vanity2/Armor/Paintjobs_ArmorDefaults/VAN_ArmorMat_%ArmorName%_Default 0 VAN_ArmorMat_%ArmorName%_Default 0

echo Import -a /Script/CoreUObject Package -i 0 /Game/Character/Vanity2/Armor/VAN_%ArmorName% 0
echo Import -a /Script/FSD ArmorVanityItem /Game/Character/Vanity2/Armor/VAN_%ArmorName% 0 VAN_%ArmorName% 0


echo ExportChange -a -i 1 ArmorItems/Array/0 ""
echo ExportChange -r -i 1 ArmorItems/Array/0/-1/ObjectIndex/0 "VAN_%ArmorName% 0"
echo ExportChange -a -i 1 ArmorMaterialItems/Array/0 ""
echo ExportChange -r -i 1 ArmorMaterialItems/Array/0/-1/ObjectIndex/0 "VAN_ArmorMat_%ArmorName%_Default 0"