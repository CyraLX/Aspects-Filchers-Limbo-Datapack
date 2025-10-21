# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!config_changer] {"translate": "%s %s", "color": "#aaaaaa", "with": [{"translate":"[%s]:","color":"#6e00c9", "with": [{"translate": "filched"}]}, {"selector":"@s", "extra":[{"text":" reset all configs to default values"}]}]}
tellraw @s {"translate": "%s %s", "color": "#aaaaaa", "with": [{"translate":"[%s]:","color":"#6e00c9", "with": [{"translate": "filched"}]}, "Configs reset to default values"]}
# Set scoreboard
scoreboard players set #filched filched.config.filcher.limbo_generation_range 10000

# Cleanup
tag @s remove config_changer
