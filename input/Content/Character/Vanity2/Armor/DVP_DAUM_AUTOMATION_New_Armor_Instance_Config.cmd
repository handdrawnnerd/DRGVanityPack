@echo off

REM NEVER USE SPACES IN THE 2 NAMES BELOW!
REM Leave no space after "="
REM Example: SET ArmorName=BarrelArmorDriller

SET ArmorName=BarrelArmorDriller
SET ClassName=Driller

REM Set UseBeard=TRUE to generate armor item with speical mesh override for beards
REM DO NOT LEAVE THE VALUE BLANK
SET UseBeard=TRUE

REM User-visible names, feel free to use spaces here.

SET UserVisibleName=Barrel Armor
SET UserVisibleDesc=The legend is back!

REM Use fairly random GUIDs for these loctexts.
REM Each GUID is a string of 32 capitalised hexadecimal numbers
REM SET UserVisibleNameGUID=0123456789ABCDEF0123456789ABCDEF

SET UserVisibleNameGUID=0123456789ABCDEF0123456789ABCDEF
SET UserVisibleDescGUID=0123456789ABCDEF0123456789ABCDEE

REM And a yet another place for a random GUID

SET ProgressionGUID=0123456789ABCDEF0123456789ABCDEF

REM The next GUID is used for the default paintjob generated for the new armour

SET PJProgressionGUID=0123456789ABCDEF0123456789ABCDE0
