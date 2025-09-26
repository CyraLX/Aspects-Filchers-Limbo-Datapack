advancement revoke @s only filched:item/focus/filcher/using

tag @s add filcher_focus_self

# Filcher
function filched:item/focus/filcher/using/effects/actor
# Non-anchor Passenger
execute unless predicate filched:item/focus/filcher/is_using_move_anchor positioned ~-2.5 ~-1 ~-2.5 as @n[type=!#filched:filcher/cannot_transport_to_limbo, tag=!filcher_focus_self, dx=4, dy=2, dz=4] at @s unless predicate aspectlib:status_effect/invisibility/any run function filched:item/focus/filcher/using/effects/passenger
# Anchor Passenger
scoreboard players operation #aspects aspectlib.dummy = @s aspectlib.player_id
execute if predicate filched:item/focus/filcher/is_using_move_anchor positioned ~-2.5 ~-1 ~-2.5 as @n[type=minecraft:armor_stand, tag=filcher_anchor, dx=4, dy=2, dz=4] at @s if score @s aspectlib.player_id = #aspects aspectlib.dummy run function filched:item/focus/filcher/using/effects/passenger

tag @s remove filcher_focus_self