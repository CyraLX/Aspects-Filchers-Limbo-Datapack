tag @s add filcher_teleport_self

execute positioned ~-2.5 ~-1 ~-2.5 as @n[type=!#filched:filcher/cannot_transport_to_limbo, tag=!filcher_teleport_self, dx=4, dy=2, dz=4] at @s run function filched:item/focus/filcher/normal/anchor/teleport_in_direct with storage aspectlib:dummy
function filched:item/focus/filcher/normal/anchor/teleport_in_direct with storage aspectlib:dummy

tag @s remove filcher_teleport_self
