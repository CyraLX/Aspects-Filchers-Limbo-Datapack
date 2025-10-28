# If no username changes occurred, do nothing
$execute if score #aspects aspectlib.dummy matches $(username_changes) run return fail

# Log data missmatch
data modify storage aspectlib:dummy filcher_anchor_owner set from entity @n[type=minecraft:armor_stand, tag=filcher_anchor_checking_owner] data.filched.filcher_anchor.owner
execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},{selector:"@s",color:"gold",extra:["'s"]}," ",{translate:"entity.filched.filcher_anchor",color:"gold"}," has outdated owner information and was updated at ",{entity:"@n[type=minecraft:armor_stand, tag=filcher_anchor_checking_owner]",nbt:"Pos",color:"gold"}]}
execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] {translate: "OLD: {name: %s, id: %s, UUID: %s, name_changes: %s}", "color":"#aaaaaa", "with": [{"storage":"aspectlib:dummy", "nbt": "filcher_anchor_owner.name","color":"gold"}, {"storage":"aspectlib:dummy", "nbt": "filcher_anchor_owner.id","color":"gold"}, {"storage":"aspectlib:dummy", "nbt": "filcher_anchor_owner.UUID","color":"gold"}, {"storage":"aspectlib:dummy", "nbt": "filcher_anchor_owner.name_changes","color":"gold"}]}
$execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] {translate: "NEW: {name: %s, id: %s, UUID: %s, name_changes: %s}", "color":"#aaaaaa", "with": [{"text":"$(username)","color":"gold"}, {"text":"$(id)","color":"gold"}, {"text":"$(uuid)","color":"gold"}, {"text":"$(username_changes)","color":"gold"}]}

# Fix data
$data modify entity @n[type=minecraft:armor_stand, tag=filcher_anchor_checking_owner] data.filched.filcher_anchor.owner set value {name: "$(username)", id: $(id), UUID: $(uuid), name_changes: $(username_changes)}
$scoreboard players set @s filched.focus.filcher.summoned_anchors $(filcher_anchor_summons)
