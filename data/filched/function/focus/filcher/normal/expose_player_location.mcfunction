data remove storage aspectlib:dummy limbo_origin_pos_x
data remove storage aspectlib:dummy limbo_origin_pos_y
data remove storage aspectlib:dummy limbo_origin_pos_z
data remove storage aspectlib:dummy limbo_origin_dimension
$data modify storage aspectlib:dummy limbo_origin_pos_x set from storage aspectlib:player_$(id) filched.dimension_data."filched:limbo".origin.pos_x
$data modify storage aspectlib:dummy limbo_origin_pos_y set from storage aspectlib:player_$(id) filched.dimension_data."filched:limbo".origin.pos_y
$data modify storage aspectlib:dummy limbo_origin_pos_z set from storage aspectlib:player_$(id) filched.dimension_data."filched:limbo".origin.pos_z
$data modify storage aspectlib:dummy limbo_origin_dimension set from storage aspectlib:player_$(id) filched.dimension_data."filched:limbo".origin.dimension
