# Expose player id for macros
function aspectlib:expose/player/id
# Expose player name for macros
function aspectlib:expose/player/username with storage aspectlib:cache temp
# Expose anchor position
function filched:item/focus/filcher/anchor/position/expose with storage aspectlib:cache temp

# Check if anchor position was deleted, if it wasn't, find and try to remove an anchor instead of continuing
execute if data storage aspectlib:cache temp.filcher_anchor_pos_x run return run function filched:item/focus/filcher/crouched/find_and_kill_anchor with storage aspectlib:cache temp

# Otherwise, place a new anchor
## Store player location without decimals
data modify storage aspectlib:cache temp.player_pos set from entity @s Pos
execute store result storage aspectlib:cache temp.filcher_anchor_pos_x long 1 run data get storage aspectlib:cache temp.player_pos[0]
execute store result storage aspectlib:cache temp.filcher_anchor_pos_y long 1 run data get storage aspectlib:cache temp.player_pos[1]
execute store result storage aspectlib:cache temp.filcher_anchor_pos_z long 1 run data get storage aspectlib:cache temp.player_pos[2]
## Store trimmed player location into storage data
function filched:item/focus/filcher/anchor/position/store with storage aspectlib:cache temp
## Summon anchor
function filched:entity/filcher_anchor/summon