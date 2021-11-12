Pre-requisite: .Net5 runtime. Make sure you get it for correct OS and architecture. 
https://dotnet.microsoft.com/download/dotnet/5.0

Once you created a branch from AutomationCore, run (double-click) CreateConfig.cmd.
It will create a new file, DVP_DAUM_AUTOMATION_Eyebrows_Generation_config.cmd.
This is the "generation config". There you will fill the data in to use for the
new armor items.

Try keeping your naming consistent. GUIDs should be fairly random. I can suggest 
using following page to generate them using some strings related with your armor.
https://codebeautify.org/md5-hash-generator
Keep the GUIDs capitalised!

Avoid GUID collisions! You can only afford using same GUIDs for texts if they are
absolutely the same.

Once you filled the settings in, double-click CreateEyebrowsInstance.cmd. You should
get few created with names reflecting your item internal name. Insert Skeletal Meshes the way you
cooked for this folder with a proper name (starting with SK_Vanity_Eyebrows_).

You don't need to start new branch for each item. Instead you can generate 
files for one item, adjust config and generate new.

In order to test your changes, create a new branch from BleedingEdge of your fork,
merge changes into it and run "AutoMerge.cmd" located in _VanitySets folder. After that
pack the resulting input folder and go see the results in the game.

Once you feel you made everything needed, create an issue at github, referring that
your branch awaits for maintainer's actions.

In case the AutomationCore branch gets an update, you can pull them to your working
branch with a PR.