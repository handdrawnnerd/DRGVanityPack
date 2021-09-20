@echo off

echo REM NEVER USE SPACES IN THE 2 NAMES BELOW!
echo REM Leave no space after "="

echo SET InternalHatName=MyHat

echo REM Material application rules
echo REM Following values are available:
echo REM HeadVanityType::HairOnly
echo REM HeadVanityType::HeadGearOnly
echo REM HeadVanityType::HeadGearOnly_UseArmorMaterial
echo REM HeadVanityType::HairAndHeadGear
echo REM HeadVanityType::HairAndHeadGear_UseArmorMaterial

echo SET HeadVanityType=EHeadVanityType::HeadGearOnly_UseArmorMaterial

echo REM What vanities and meshes should be hidden?
echo REM Only use TRUE or FALSE

echo SET HideEyebrows=FALSE
echo SET HideSideburns=FALSE
echo SET HideMoustache=FALSE
echo SET HideBeard=TRUE
echo SET HideAll=TRUE
echo SET HideHead=TRUE

echo REM Set to TRUE and type material asset name to use custom material
echo REM THE MATERIAL MUST BE LOCATED IN THE SAME FOLDER WITH VANITY AND SK FILES

echo SET UseMaterialOverride=FALSE
echo SET MaterialOverride=

echo REM I don't have much idea what following property does
echo REM But here are the possible values
echo REM ECharacterHeadMesh::Full
echo REM ECharacterHeadMesh::ThichNeckOnly
echo REM ECharacterHeadMesh::ThinNeckOnly
echo REM ECharacterHeadMesh::None

echo SET HeadMesh=ECharacterHeadMesh::ThichNeckOnly

echo REM User-visible names, feel free to use spaces here

echo SET UserVisibleName=My new hat
echo SET UserVisibleDesc=TF2 we are coming for you!

echo REM Use fairly random GUIDs for these loctexts
echo REM Each GUID is a string of 32 capitalised hexadecimal numbers
echo REM SET UserVisibleNameGUID=0123456789ABCDEF0123456789ABCDEF

echo SET UserVisibleNameGUID=0123456789ABCDEF0123456789ABCDEF
echo SET UserVisibleDescGUID=0123456789ABCDEF0123456789ABCDEE

echo REM And a yet another place for a random GUID

echo SET ProgressionGUID=0123456789ABCDEF0123456789ABCDEF

echo REM Set desired resource costs

echo SET CraftingCreditsCost=1000
echo SET CostBismor=0
echo SET CostMagnite=0
echo SET CostUmanite=0
echo SET CostEnorPearl=0
echo SET CostJadiz=0
echo SET CostCroppa=0
