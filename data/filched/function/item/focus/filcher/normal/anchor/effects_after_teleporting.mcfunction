particle minecraft:portal ~ ~0.75 ~ 0.3 0.3 0.3 0.5 250 normal
particle minecraft:dust{color: 6815958, scale: 2} ~ ~0.75 ~ 0.2 0.3 0.2 1 25 normal
particle minecraft:dust{color: 807267, scale: 1} ~ ~0.75 ~ 0.3 0.4 0.3 1 25 normal

playsound minecraft:entity.player.teleport player @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..16] ~ ~ ~ 1 0.5
