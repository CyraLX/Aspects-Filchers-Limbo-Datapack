# execute if predicate filched:dimension/limbo/is_located run title @s actionbar {translate: "Leaving %s...", with: [{translate: "dimension.filched.limbo"}], color: "#6e00c9"}
# execute unless predicate filched:dimension/limbo/is_located run title @s actionbar {translate: "Entering %s...", with: [{translate: "dimension.filched.limbo"}], color: "#6e00c9"}

particle minecraft:reverse_portal ~ ~0.75 ~ 0.3 0.3 0.3 1 500 normal
particle minecraft:dust{color: 6815958, scale: 2} ~ ~0.75 ~ 0.1 0.2 0.1 1 50 normal
particle minecraft:dust{color: 807267, scale: 1} ~ ~0.75 ~ 0.2 0.3 0.2 1 50 normal

playsound minecraft:entity.player.teleport player @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.charge player @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..16] ~ ~ ~ 1 0.5
