# Store current location to teleport back to
function aspectlib:player/id/expose
function filched:item/focus/filcher/normal/store_player_location with storage aspectlib:dummy

# Teleport
function filched:item/focus/filcher/normal/anchor/effects_when_teleporting
$execute in filched:limbo positioned $(filcher_anchor_pos_x) $(filcher_anchor_pos_x) $(filcher_anchor_pos_x) run function filched:item/focus/filcher/normal/anchor/effects_after_teleporting
$return run execute in filched:limbo run spreadplayers $(filcher_anchor_pos_x) $(filcher_anchor_pos_z) 12 12 false @s