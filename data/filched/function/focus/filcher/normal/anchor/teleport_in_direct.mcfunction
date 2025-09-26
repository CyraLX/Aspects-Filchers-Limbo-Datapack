# If teleported an advancement entity to Limbo, grant that advancement
execute if entity @s[type=minecraft:warden] as @p[tag=filcher_teleport_self] at @s if predicate filched:aspect/filcher/is_active run advancement grant @s only filched:gameplay/aspect/filcher/gtw
execute if entity @s[type=minecraft:elder_guardian] as @p[tag=filcher_teleport_self] at @s if predicate filched:aspect/filcher/is_active run advancement grant @s only filched:gameplay/aspect/filcher/big_catch

function filched:focus/filcher/normal/anchor/effects_when_teleporting
$execute in filched:limbo run tp @s $(filcher_anchor_pos_x) $(filcher_anchor_pos_y) $(filcher_anchor_pos_z)
$execute in filched:limbo positioned $(limbo_origin_pos_x) $(limbo_origin_pos_y) $(limbo_origin_pos_z) run function filched:focus/filcher/normal/anchor/effects_after_teleporting
