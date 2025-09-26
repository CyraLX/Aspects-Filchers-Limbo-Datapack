# Clean up location storage
function filched:item/focus/filcher/anchor/position/remove with storage aspectlib:dummy
# Log
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {translate: "%s %s tried to create a new Limbo location at %s and failed, trying again...", "color":"#aaaaaa", with: [{"translate":"[%s]:","color":"#6e00c9", "with": [{"translate": "filched"}]}, {"selector": "@s"}, {"translate": "[%s, %s, %s]", "color": "gold", "with": [{"storage":"aspectlib:dummy", "nbt": "filcher_anchor_pos_x"}, {"storage":"aspectlib:dummy", "nbt": "filcher_anchor_pos_y"}, {"storage":"aspectlib:dummy", "nbt": "filcher_anchor_pos_z"}]}]}
# Retry
function filched:item/focus/filcher/normal/anchor/missing
