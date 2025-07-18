$execute unless entity @s[type=minecraft:armor_stand, tag=filcher_anchor, scores={aspectlib.player_id=$(id)}] as @n[type=minecraft:armor_stand, tag=filcher_anchor, scores={aspectlib.player_id=$(id)}] at @s run return run function filched:entity/filcher_anchor/kill
function filched:entity/filcher_anchor/kill
