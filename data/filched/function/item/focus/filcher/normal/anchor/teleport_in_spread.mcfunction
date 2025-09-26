function filched:item/focus/filcher/normal/anchor/effects_when_teleporting
$execute in filched:limbo positioned $(limbo_origin_pos_x) $(limbo_origin_pos_y) $(limbo_origin_pos_z) run function filched:item/focus/filcher/normal/anchor/effects_after_teleporting
$return run execute in filched:limbo run spreadplayers $(filcher_anchor_pos_x) $(filcher_anchor_pos_z) 12 12 false @s