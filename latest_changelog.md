# Filcher's Limbo 1.2.0

## Overview
- Removed Minecraft 1.21.5 support due to the lack of Dialogs.
- Updated to support 26.1 snapshots 5 to 6.
- Added Lithuanian Translations.
- Added Turkish Translations.
- (26.1+) Limbo visual overhaul.
- Moved addon's advancements into its own tab.

## Dimension Changes
### Limbo
- (26.1+) Redone visuals to look more intimidating and darker.
- (26.1+) Using `/time set` command now allows to manually set `storm` and `post-storm` time cycles.
- Now applies damage to unsafe entities every 0.75s instead of 0.5s.

## Technical Changes
- Increased Pack Format to `5`
- Required `aspects` version is now `v1.3.0`
- Hardened Datapack validation.
- > It will no longer apply datafixers if dependancies are missing or wrong versions.
- Rewritten configs to use Dialogs instead.
