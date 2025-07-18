tag @s add filcher_anchor_checking_owner

$execute as @p[scores={aspectlib.player_id=$(id)}] run function filched:entity/filcher_anchor/update_owner_data/prepare_to_update

tag @s remove filcher_anchor_checking_owner