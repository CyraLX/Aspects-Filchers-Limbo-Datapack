advancement revoke @s only filched:focus/filcher/using

tag @s add filcher_focus_self

function filched:focus/filcher/using/effects/actor
execute unless predicate filched:focus/filcher/is_using_move_anchor positioned ~-2.5 ~-1 ~-2.5 as @n[type=!#aspectlib:non-living, tag=!filcher_focus_self, dx=4, dy=2, dz=4] at @s unless predicate aspectlib:status_effect/invisibility/any run function filched:focus/filcher/using/effects/passenger
execute if predicate filched:focus/filcher/is_using_move_anchor positioned ~-2.5 ~-1 ~-2.5 as @n[type=minecraft:armor_stand, tag=filcher_anchor, dx=4, dy=2, dz=4] at @s run function filched:focus/filcher/using/effects/passenger

tag @s remove filcher_focus_self