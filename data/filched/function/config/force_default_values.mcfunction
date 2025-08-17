# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!config_changer] {"translate": "%s %s reset all configs to default values", "color": "#aaaaaa", "with": [{"translate":"[%s]:","color":"#6e00c9", "with": [{"translate": "filched"}]}, {"selector": "@s", "color": "gold"}]}
tellraw @s {"translate": "%s Configs reset to default values", "color": "#aaaaaa", "with": [{"translate":"[%s]:","color":"#6e00c9", "with": [{"translate": "filched"}]}]}
# Set scoreboard
scoreboard players set #filched filched.config.filcher_anchor_entity_cap 24
# Cleanup
tag @s remove config_changer
