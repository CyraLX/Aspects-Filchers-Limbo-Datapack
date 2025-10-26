# Store current location to teleport back to
function aspectlib:player/id/expose
function filched:item/focus/filcher/normal/store_player_location with storage aspectlib:dummy

# Teleport
function filched:item/focus/filcher/normal/anchor/effects_when_teleporting
$execute in $(limbo_origin_dimension) run tp @s $(limbo_origin_pos_x) $(limbo_origin_pos_y) $(limbo_origin_pos_z)
$execute in $(limbo_origin_dimension) positioned $(limbo_origin_pos_x) $(limbo_origin_pos_y) $(limbo_origin_pos_z) run function filched:item/focus/filcher/normal/anchor/effects_after_teleporting
