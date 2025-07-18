# Expose player id for macros
function aspectlib:player/id/expose
# Expose player name for macros
function aspectlib:player/username/expose with storage aspectlib:dummy
# Expose anchor position
function filched:focus/filcher/anchor/position/expose with storage aspectlib:dummy

# Check if anchor position was deleted, if it wasn't, find and try to remove an anchor instead of continuing
execute if data storage aspectlib:dummy filcher_anchor_pos_x run return run execute positioned ~-2.5 ~-1 ~-2.5 as @n[type=minecraft:armor_stand, tag=filcher_anchor, dx=4, dy=2, dz=4] run function filched:entity/filcher_anchor/remove with storage aspectlib:dummy

# Otherwise, place a new anchor
## Store player location without decimals
data modify storage aspectlib:dummy player_pos set from entity @s Pos
execute store result storage aspectlib:dummy filcher_anchor_pos_x long 1 run data get storage aspectlib:dummy player_pos[0]
execute store result storage aspectlib:dummy filcher_anchor_pos_y long 1 run data get storage aspectlib:dummy player_pos[1]
execute store result storage aspectlib:dummy filcher_anchor_pos_z long 1 run data get storage aspectlib:dummy player_pos[2]
## Store trimmed player location into storage data
function filched:focus/filcher/anchor/position/store with storage aspectlib:dummy
## Summon anchor
function filched:entity/filcher_anchor/summon