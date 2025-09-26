particle minecraft:white_smoke ~ ~0.5 ~ 0.15 0.4 0.15 0 75 force
playsound minecraft:block.respawn_anchor.deplete block @a[distance=..16] ~ ~ ~ 1 1

function filched:item/focus/filcher/anchor/position/remove with entity @s data.filched.filcher_anchor.owner

return run kill @s
