tag @s add filched.filcher_anchor.owner_checker

execute store result storage aspectlib:cache temp.filcher_anchor_summons int 1 run scoreboard players get @s filched.focus.filcher.summoned_anchors
execute store result score #aspects aspectlib.dummy run data get entity @s data.filched.filcher_anchor.owner.name_changes
$execute as @p[scores={aspectlib.player_id=$(id)}] run function filched:entity/filcher_anchor/update_owner_data/prepare_to_update

tag @s remove filched.filcher_anchor.owner_checker