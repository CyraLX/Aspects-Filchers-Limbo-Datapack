advancement revoke @s only filched:item/focus/filcher/use

# Do not continue if user is dead
execute unless predicate aspectlib:flags/is_alive run return fail
# Do not continue if user is riding something or being ridden
execute if predicate aspectlib:has_passenger_or_vehicle run return run playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1 2

# Not in Limbo
execute unless predicate filched:dimension/limbo/is_located run return run function filched:item/focus/filcher/normal/trigger
# In Limbo, moving the Filcher Anchor
execute if predicate filched:item/focus/filcher/is_using_move_anchor run return run function filched:item/focus/filcher/crouched/trigger
# In Limbo
function filched:item/focus/filcher/normal/trigger
