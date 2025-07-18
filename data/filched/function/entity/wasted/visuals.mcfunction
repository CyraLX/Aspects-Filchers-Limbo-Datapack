# Glow in Limbo
execute if predicate filched:dimension/limbo/is_located run effect give @s minecraft:glowing 1 0 true
# Be On Fire when outside Limbo
execute unless predicate filched:dimension/limbo/is_located run return run data modify entity @s HasVisualFire set value true
execute if entity @s[nbt={HasVisualFire:true}] run data modify entity @s HasVisualFire set value false
