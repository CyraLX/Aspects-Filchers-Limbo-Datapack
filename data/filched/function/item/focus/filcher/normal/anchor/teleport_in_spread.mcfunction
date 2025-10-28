# Do nothing if already in Limbo
execute if predicate filched:dimension/limbo/is_located run return fail

# Store current location to teleport players back to
execute if entity @s[type=minecraft:player] run function aspectlib:player/id/expose
execute if entity @s[type=minecraft:player] run function filched:item/focus/filcher/normal/store_player_location with storage aspectlib:dummy
# Store temporarely non-player locations for Post-Teleport effects
# execute if entity @s[type=!minecraft:player] run function filched:item/focus/filcher/normal/store_mob_location

# Perform Teleport
## Pre-Teleport effects
function filched:item/focus/filcher/normal/anchor/effects_when_teleporting
## Post-Teleport effects
# function filched:item/focus/filcher/normal/anchor/effects_after_teleporting_macro with storage aspectlib:dummy
## Teleport
$return run execute in filched:limbo run spreadplayers $(filcher_anchor_pos_x) $(filcher_anchor_pos_z) 12 12 false @s