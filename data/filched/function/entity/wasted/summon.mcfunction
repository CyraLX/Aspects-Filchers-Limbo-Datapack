# Summon entity
summon minecraft:skeleton ~ ~ ~ {data: {filched: {wasted: {}}}, Silent: true, Tags: ["infected_by_limbo", "filched_spawning_entity"], Team: "filched_wasted", CanPickUpLoot: true, CustomNameVisible: false, CustomName: {translate: "entity.filched.wasted", color: "white"}, DeathLootTable: "filched:entities/wasted", PersistenceRequired: true, active_effects: [{id: "minecraft:invisibility", duration: -1, amplifier: 1, ambient: true, show_icon: false, show_particles: false}]}
# If an Aspect is stored, take its form, unless it is Limbo Attuned
execute if data storage aspectlib:dummy aspect unless predicate filched:aspect_group/is_limbo_attuned as @n[distance=..4, type=minecraft:skeleton, tag=filched_spawning_entity] run function filched:entity/wasted/set_aspect with storage aspectlib:dummy aspect
# Set baseline equipment
execute as @n[distance=..4, type=minecraft:skeleton, tag=filched_spawning_entity] at @s run function filched:entity/wasted/set_equipment
# Set home position to patrol
data modify entity @n[distance=..4, type=minecraft:skeleton, tag=filched_spawning_entity] home_radius set value 8
execute as @n[distance=..4, type=minecraft:skeleton, tag=filched_spawning_entity] at @s run data modify entity @s home_pos set from entity @s Pos
# Vacuum nearby items to equip
execute as @e[type=minecraft:item, distance=..2] run data modify entity @s PickupDelay set value 0
tp @e[type=minecraft:item, distance=..2] @s

# Clean up
tag @n[distance=..4, type=minecraft:skeleton, tag=filched_spawning_entity] remove filched_spawning_entity
