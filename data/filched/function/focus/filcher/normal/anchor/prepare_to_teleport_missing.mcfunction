tag @s add filcher_teleport_self

# execute positioned ~-2.5 ~-1 ~-2.5 as @n[type=!#aspectlib:non-living, tag=!filcher_teleport_self, dx=4, dy=2, dz=4] at @s run function filched:focus/filcher/normal/anchor/teleport_in_spread with storage aspectlib:dummy
function filched:focus/filcher/normal/anchor/teleport_in_spread with storage aspectlib:dummy

tag @s remove filcher_teleport_self
