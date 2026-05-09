tag @s add filched.teleporting

execute positioned ~-2.5 ~-1 ~-2.5 as @n[type=!#aspectlib:non-living, tag=!filched.teleporting, tag=!smithed.strict, dx=4, dy=2, dz=4, predicate=!aspectlib:has_passenger_or_vehicle] at @s run function filched:item/focus/filcher/normal/anchor/teleport_out with storage aspectlib:cache temp
function filched:item/focus/filcher/normal/anchor/teleport_out with storage aspectlib:cache temp

tag @s remove filched.teleporting
