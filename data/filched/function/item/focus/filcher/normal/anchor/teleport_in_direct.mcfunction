# Do nothing if already in Limbo
execute if predicate filched:dimension/limbo/is_located run return fail

# If teleported an advancement entity to Limbo, grant that advancement
execute if entity @s[tag=!filcher_teleport_self] as @p[tag=filcher_teleport_self] at @s if predicate filched:aspect/filcher/is_active run advancement grant @s only filched:gameplay/aspect/filcher/transport_entity
execute if entity @s[type=minecraft:warden] as @p[tag=filcher_teleport_self] at @s if predicate filched:aspect/filcher/is_active run advancement grant @s only filched:gameplay/aspect/filcher/gtw
execute if entity @s[type=minecraft:elder_guardian] as @p[tag=filcher_teleport_self] at @s if predicate filched:aspect/filcher/is_active run advancement grant @s only filched:gameplay/aspect/filcher/big_catch

# Store current location to teleport players back to
execute if entity @s[type=minecraft:player] run function aspectlib:player/id/expose
execute if entity @s[type=minecraft:player] run function filched:item/focus/filcher/normal/store_player_location with storage aspectlib:dummy
# Store temporarely non-player locations for Post-Teleport effects
execute if entity @s[type=!minecraft:player] run function filched:item/focus/filcher/normal/store_mob_location

# Perform Teleport
## Pre-Teleport effects
function filched:item/focus/filcher/normal/anchor/effects_when_teleporting
## Teleport
$execute in filched:limbo run tp @s $(filcher_anchor_pos_x) $(filcher_anchor_pos_y) $(filcher_anchor_pos_z)
## Post-Teleport effects
function filched:item/focus/filcher/normal/anchor/effects_after_teleporting_macro with storage aspectlib:dummy
