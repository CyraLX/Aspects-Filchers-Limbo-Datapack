execute if entity @s[type=minecraft:player] run return fail

data modify storage aspectlib:dummy limbo_origin_pos set from entity @s Pos
data modify storage aspectlib:dummy limbo_origin_pos_x set from storage aspectlib:dummy limbo_origin_pos.x
data modify storage aspectlib:dummy limbo_origin_pos_y set from storage aspectlib:dummy limbo_origin_pos.y
data modify storage aspectlib:dummy limbo_origin_pos_z set from storage aspectlib:dummy limbo_origin_pos.z
