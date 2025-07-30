advancement revoke @s only filched:trigger/version/get/run
scoreboard players enable @s filched.version.get
scoreboard players set @s filched.version.get 0

tag @s add version_retriever

data remove storage aspectlib:dummy text_suffix
execute if score #filched filched.version.is_dev matches 1 run data modify storage aspectlib:dummy text_suffix set value "-dev"

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!version_retriever] {"translate": "%1$s %2$s checked what version %3$s is", "color": "#aaaaaa", "with": [{"translate":"[%s]:", "color":"#6e00c9", "with": [{"translate": "filched"}]}, {"selector": "@s", "color": "gold"}, {"translate": "filched", "color":"#6e00c9"}]}
tellraw @s {"translate": "%1$s %2$s (Pack Format: %3$s)", "color": "#aaaaaa", "with": [{"translate":"[%s]:", "color":"#6e00c9", "with": [{"translate": "filched"}]}, {"translate": "v%1$s.%2$s.%3$s%4$s", "color": "gold", "with": [{"score": {"name": "#filched", "objective": "filched.version.release"}}, {"score": {"name": "#filched", "objective": "filched.version.major"}}, {"score": {"name": "#filched", "objective": "filched.version.minor"}}, {"storage": "aspectlib:dummy", "nbt": "text_suffix"}]}, {"score": {"name": "#filched", "objective": "filched.pack_format"}, "color": "gold"}]}

tag @s remove version_retriever
