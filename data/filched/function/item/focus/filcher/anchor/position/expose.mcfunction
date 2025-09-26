data remove storage aspectlib:dummy filcher_anchor_pos_x
data remove storage aspectlib:dummy filcher_anchor_pos_y
data remove storage aspectlib:dummy filcher_anchor_pos_z
$data modify storage aspectlib:dummy filcher_anchor_pos_x set from storage aspectlib:player_$(id) aspects.aspect_data."filched:filcher".anchor.pos_x
$data modify storage aspectlib:dummy filcher_anchor_pos_y set from storage aspectlib:player_$(id) aspects.aspect_data."filched:filcher".anchor.pos_y
$data modify storage aspectlib:dummy filcher_anchor_pos_z set from storage aspectlib:player_$(id) aspects.aspect_data."filched:filcher".anchor.pos_z
