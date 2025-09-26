execute unless predicate filched:aspect/filcher/is_active run return fail

# Increment and store summoned anchors amount on actor
scoreboard players add @s filched.focus.filcher.summoned_anchors 1
execute store result storage aspectlib:dummy summoned_anchors byte 1 run scoreboard players get @s filched.focus.filcher.summoned_anchors

# Expose player id for macro
function aspectlib:player/id/expose
# Expose player name for macro
function aspectlib:player/username/expose with storage aspectlib:dummy
# Expose player name change count for macro
function aspectlib:player/username_changes/expose with storage aspectlib:dummy
# Expose player uuid for macro
function aspectlib:player/uuid/expose
# Expose anchor position for macro
function filched:item/focus/filcher/anchor/position/expose with storage aspectlib:dummy
# Summon armor stand and modify its data with macro
execute summon minecraft:armor_stand run function filched:entity/filcher_anchor/modify_data with storage aspectlib:dummy
