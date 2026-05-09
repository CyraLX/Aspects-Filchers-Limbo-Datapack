data modify storage aspectlib:cache temp.filcher_anchor_pos_x set from entity @s Pos[0]
data modify storage aspectlib:cache temp.filcher_anchor_pos_y set from entity @s Pos[1]
data modify storage aspectlib:cache temp.filcher_anchor_pos_z set from entity @s Pos[2]

function filched:item/focus/filcher/anchor/position/store with storage aspectlib:cache temp
