# Limbo Attuned
execute if predicate filched:aspect_group/is_limbo_attuned run return run effect give @s minecraft:slowness 1 0 true
# Non-Limbo Attuned
effect give @s minecraft:slowness 1 0 true
effect give @s minecraft:mining_fatigue 1 0 true
