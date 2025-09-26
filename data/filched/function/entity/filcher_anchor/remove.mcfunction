$execute unless entity @s[type=minecraft:armor_stand, tag=filcher_anchor, scores={aspectlib.player_id=$(id)}] as @n[type=minecraft:armor_stand, tag=filcher_anchor, scores={aspectlib.player_id=$(id)}] at @s run return run function filched:entity/filcher_anchor/kill_and_remove_anchor_position
function filched:entity/filcher_anchor/kill_and_remove_anchor_position
