# Limbo Attuned
execute if predicate filched:aspect_group/is_limbo_attuned positioned ~-8 ~-13 ~-8 unless entity @n[dx=14.75, dy=13.1, dz=14.75, type=minecraft:armor_stand, tag=filcher_anchor] run effect give @s minecraft:mining_fatigue 1 0 true
execute if predicate filched:aspect_group/is_limbo_attuned run return run effect give @s minecraft:slowness 1 0 true
# Non-Limbo Attuned
effect give @s minecraft:slowness 1 0 true
execute positioned ~-8 ~-13 ~-8 unless entity @n[dx=14.75, dy=13.1, dz=14.75, type=minecraft:armor_stand, tag=filcher_anchor] run return run effect give @s minecraft:mining_fatigue 1 1 true
effect give @s minecraft:mining_fatigue 1 0 true
