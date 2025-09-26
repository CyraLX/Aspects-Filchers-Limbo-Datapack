# Expose player id for macros
function aspectlib:player/id/expose
# Expose player name for macros
function aspectlib:player/username/expose with storage aspectlib:dummy
# Expose anchor position
function filched:item/focus/filcher/anchor/position/expose with storage aspectlib:dummy

# Check if anchor position was deleted, if it wasn't, find and try to remove an anchor instead of continuing
execute if data storage aspectlib:dummy filcher_anchor_pos_x run return run function filched:item/focus/filcher/crouched/find_and_kill_anchor with storage aspectlib:dummy

# Otherwise, place a new anchor
## Store player location without decimals
data modify storage aspectlib:dummy player_pos set from entity @s Pos
execute store result storage aspectlib:dummy filcher_anchor_pos_x long 1 run data get storage aspectlib:dummy player_pos[0]
execute store result storage aspectlib:dummy filcher_anchor_pos_y long 1 run data get storage aspectlib:dummy player_pos[1]
execute store result storage aspectlib:dummy filcher_anchor_pos_z long 1 run data get storage aspectlib:dummy player_pos[2]
## Store trimmed player location into storage data
function filched:item/focus/filcher/anchor/position/store with storage aspectlib:dummy
## Summon anchor
function filched:entity/filcher_anchor/summon