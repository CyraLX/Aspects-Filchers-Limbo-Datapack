effect give @s minecraft:weakness 1 0 true

# Radius
## East
particle minecraft:dust{color: 0, scale: 1} ~2.4 ~0.6 ~ 0 0.1 1 0 5 normal @a[predicate=filched:aspect_group/is_limbo_attuned]
particle minecraft:dust{color: 2752563, scale: 1} ~2.4 ~0.6 ~ 0 0.1 1 0 5 force @a[predicate=filched:aspect_group/is_limbo_attuned]
## West
particle minecraft:dust{color: 0, scale: 1} ~-2.4 ~0.6 ~ 0 0.1 1 0 5 normal @a[predicate=filched:aspect_group/is_limbo_attuned]
particle minecraft:dust{color: 2752563, scale: 1} ~-2.4 ~0.6 ~ 0 0.1 1 0 5 force @a[predicate=filched:aspect_group/is_limbo_attuned]
## South
particle minecraft:dust{color: 0, scale: 1} ~ ~0.6 ~2.4 1 0.1 0 0 5 normal @a[predicate=filched:aspect_group/is_limbo_attuned]
particle minecraft:dust{color: 2752563, scale: 1} ~ ~0.6 ~2.4 1 0.1 0 0 5 force @a[predicate=filched:aspect_group/is_limbo_attuned]
## North
particle minecraft:dust{color: 0, scale: 1} ~ ~0.6 ~-2.4 1 0.1 0 0 5 normal @a[predicate=filched:aspect_group/is_limbo_attuned]
particle minecraft:dust{color: 2752563, scale: 1} ~ ~0.6 ~-2.4 1 0.1 0 0 5 force @a[predicate=filched:aspect_group/is_limbo_attuned]
# Fill the radius
particle minecraft:entity_effect{"color": [0.2, 0, 0.3, 1]} ~ ~-0.5 ~ 1 0 1 0 10 normal
particle minecraft:entity_effect{"color": [0, 0, 0, 1]} ~ ~0.5 ~ 1 0 1 0 5 normal

function filched:focus/filcher/using/effects/shared
