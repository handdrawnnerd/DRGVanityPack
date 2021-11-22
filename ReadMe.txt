Welcome to DRG Vanity Pack automation repo!

The project allows us easily create the Vanity Pack mod that adds new vanities into the game, without
overriding the existing ones. The automation system takes care of about 2 things:
- Generating valid files with desired settings for new vanity items
- Merging the new items into one mod to get rid of conflicts

In order to start using it, make a fork of the repository and start a new branch from AutomationCore.
In this new branch, open input/Content that features parts of the game folder hierarchy. Head to
the folder containing vanity items of your "type" (i.e. input/Content/Character/Vanity2/Armor if
you are working with armours). Then follow the instructions of ReadMe.txt found there.

Upon finishing your actions in this branch, commit changes and switch to the BleedingEdge branch.
Make a new branch from it. Merge the changes of the first branch into the second new branch you created.
You can both do it locally (for example, with GitHub Desktop), or open and merge a PR using gh web page
of your fork.

Once merged, head to _VanitySets folder and run AutoMerge.cmd. Commit changes (if any) and proceed to testing.
Pak all the input folder from the merged branch with UE and see if it works as intended. In case of success,
contact maintainers (@Drilboy Jenkins aka DarthPointer or @Pacagma) or open an issue at the original repo
https://github.com/DarthPointer/DRGVanityPack/issues and mention your work being ready to use.

While the focus of the repository is to provide a "one-click" workflow for the Vanity Pack mod, it is still
possible to use it to create separate "additive vanity" mods. Contact maintainers if you want to use the
project and get your vanities as a separate "additive" mod. You do not need to contribute to the merged pack
if you only want to create your separate.

Separate mods are not encouraged as they will conflict with the pack and other separate "additive" mods.
However we are ready to support that case.