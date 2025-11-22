# Limbo Attuned
execute if predicate filched:aspect_group/is_limbo_attuned run effect give @s minecraft:mining_fatigue 1 0 true
execute if predicate filched:aspect_group/is_limbo_attuned run return run damage @s 1.0 filched:lost_to_limbo
# Non-Limbo Attuned
effect give @s minecraft:mining_fatigue 1 1 true
damage @s 2.0 filched:lost_to_limbo
