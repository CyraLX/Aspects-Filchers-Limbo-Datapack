# Modify base nbt
data modify entity @s {} merge value {data: {filched: {filcher_anchor:{}}}, Silent: true, Tags: ["filcher_anchor"], DisabledSlots: 16191, Invisible: true, Invulnerable: true, NoBasePlate: true, NoGravity: true, NoAI: true, equipment: {head: {id: "minecraft:jigsaw"}}}
# Change scores to owner
execute store result score @s aspectlib.player_id run data get storage aspectlib:dummy id
execute store result score @s filched.focus.filcher.summoned_anchors run data get storage aspectlib:dummy summoned_anchors
# Store owner data
$data modify entity @s data.filched.filcher_anchor.owner set value {name: "$(username)", id: $(id), UUID: $(uuid)}
# Add enchantment to the head item
item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"filched:entity/filcher_anchor/head":1}}
# Teleport to owners anchor position
$execute in filched:limbo positioned $(filcher_anchor_pos_x) $(filcher_anchor_pos_y) $(filcher_anchor_pos_z) align xyz run tp @s ~ ~ ~
