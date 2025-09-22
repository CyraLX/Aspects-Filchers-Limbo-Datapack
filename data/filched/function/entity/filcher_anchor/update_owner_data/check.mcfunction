tag @s add filcher_anchor_checking_owner

execute store result storage aspectlib:dummy filcher_anchor_summons int 1 run scoreboard players get @s filched.focus.filcher.summoned_anchors
execute store result score #aspects aspectlib.dummy run data get entity @s data.filched.filcher_anchor.owner.name_changes
$execute as @p[scores={aspectlib.player_id=$(id)}] run function filched:entity/filcher_anchor/update_owner_data/prepare_to_update

tag @s remove filcher_anchor_checking_owner