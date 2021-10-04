@echo off

echo REM NEVER USE SPACES IN THE 2 NAMES BELOW!
echo REM Leave no space after "="
echo REM Example: SET ArmorName=BarrelArmorDriller
echo REM Valid Class Names: Driller, Scout, Gunner, Engineer

echo SET ArmorName=BarrelArmorDriller
echo SET ClassName=Driller

echo REM Set UseBeard=TRUE to generate armor item with speical mesh override for beards
echo REM DO NOT LEAVE THE VALUE BLANK
echo SET UseBeard=TRUE

echo REM Set to TRUE and type material asset name to use custom material
echo REM THE MATERIAL MUST BE LOCATED IN THE SAME FOLDER WITH VANITY AND SK FILES

echo SET UseMaterialOverride=FALSE
echo SET MaterialOverride=

echo REM User-visible names, feel free to use spaces here

echo SET UserVisibleName=Barrel Armor
echo SET UserVisibleDesc=The legend is back!

echo REM Use fairly random GUIDs for these loctexts
echo REM Each GUID is a string of 32 capitalised hexadecimal numbers
echo REM SET UserVisibleNameGUID=0123456789ABCDEF0123456789ABCDEF

echo SET UserVisibleNameGUID=0123456789ABCDEF0123456789ABCDEF
echo SET UserVisibleDescGUID=0123456789ABCDEF0123456789ABCDEE

echo REM And a yet another place for a random GUID

echo SET ProgressionGUID=0123456789ABCDEF0123456789ABCDEF

echo REM The next GUID is used for the default paintjob generated for the new armour

echo SET PJProgressionGUID=0123456789ABCDEF0123456789ABCDE0

echo REM Set desired resource costs

echo SET CraftingCreditsCost=1000
echo SET CostBismor=0
echo SET CostMagnite=0
echo SET CostUmanite=0
echo SET CostEnorPearl=0
echo SET CostJadiz=0
echo SET CostCroppa=0