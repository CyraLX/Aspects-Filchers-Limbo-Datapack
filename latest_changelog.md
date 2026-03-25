# Filcher's Limbo 1.2.1

## Overview
- Updated to support up to Minecraft 26.1.
- Dropped support for `Quilt` and `Forge` Mod Loaders and seperated Mod Loader files into seperate versions.
- > This means for `Fabric` and `NeoForge` there is no longer a universal `.jar` file unlike the Data Pack version.
- Added Italian Translations (Thanks to `Crafty` and `Zane`).
- Overhauled the `Aspects Menu` into a generic `Data Packs...` menu to be more in-line with other Data Pack conventions.
- > This new menu is a lot like the Mod Menu's from Fabric and/or Forge/NeoForge.

## General Changes
- Updated Lithuanian Translations.
- Updated Turkish Translations.
- Configuration sliders now are capped at certain steps where it made sense.
- Fixed a broken translation key for Configurations.

## Technical Changes
- Increased Pack Format to `6`.
- Required `aspects` version is now `v1.3.1`
- Now attempts to follow [Smithed Conventions](https://docs.smithed.dev/conventions).
- Adjusted most `Back` buttons in dialogs to be consistently 200px wide just like vanilla menus.
- (1.21.10 and below) Fixed overlay not addressing `distant_storm` update function.
