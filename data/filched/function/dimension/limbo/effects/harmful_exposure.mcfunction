execute unless loaded ~ ~ ~ run return fail

execute if entity @s[type=!#filched:dimension/limbo/infection_immune] run function filched:dimension/limbo/effects/harmful/infect
function filched:dimension/limbo/effects/harmful/status_effects
execute positioned ~-8 ~-13 ~-8 unless entity @n[dx=14.75, dy=13.1, dz=14.75, type=minecraft:armor_stand, tag=filcher_anchor] run function filched:dimension/limbo/effects/harmful/damage
