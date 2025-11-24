# Remove old data
data remove storage aspectlib:dummy limbo_origin_pos_x
data remove storage aspectlib:dummy limbo_origin_pos_y
data remove storage aspectlib:dummy limbo_origin_pos_z
data remove storage aspectlib:dummy limbo_origin_dimension
# Store origin location
$data modify storage aspectlib:dummy limbo_origin_pos_x set from storage aspectlib:users player.$(id).filched.dimension_data."filched:limbo".origin.pos_x
$data modify storage aspectlib:dummy limbo_origin_pos_y set from storage aspectlib:users player.$(id).filched.dimension_data."filched:limbo".origin.pos_y
$data modify storage aspectlib:dummy limbo_origin_pos_z set from storage aspectlib:users player.$(id).filched.dimension_data."filched:limbo".origin.pos_z
$data modify storage aspectlib:dummy limbo_origin_dimension set from storage aspectlib:users player.$(id).filched.dimension_data."filched:limbo".origin.dimension
# If origin position is missing, use fallback locations
execute if data storage aspectlib:dummy limbo_origin_pos_x run return 1

# Give Effect
effect give @s minecraft:blindness 1 0 true

# Try getting respawn Position
## Remove old data
data remove storage aspectlib:dummy limbo_origin
## Store player's respawn data
data modify storage aspectlib:dummy limbo_origin set from entity @s respawn
## If has respawn data, use that and return
execute if data storage aspectlib:dummy limbo_origin run data modify storage aspectlib:dummy limbo_origin_dimension set from storage aspectlib:dummy limbo_origin.dimension
execute if data storage aspectlib:dummy limbo_origin run data modify storage aspectlib:dummy limbo_origin_pos_x set from storage aspectlib:dummy limbo_origin.pos[0]
execute if data storage aspectlib:dummy limbo_origin run data modify storage aspectlib:dummy limbo_origin_pos_y set from storage aspectlib:dummy limbo_origin.pos[1]
execute if data storage aspectlib:dummy limbo_origin run data modify storage aspectlib:dummy limbo_origin_pos_z set from storage aspectlib:dummy limbo_origin.pos[2]
## Logger
execute if data storage aspectlib:dummy limbo_origin if entity @p[tag=get_debug_logs] run return run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},{selector:"@s",color:"gold"}," was missing an origin point. Using respawn location instead at ",{text:"",color:"gold",extra:["[\"",{storage:"aspectlib:dummy",nbt:"limbo_origin_dimension"},"\", ",{storage:"aspectlib:dummy",nbt:"limbo_origin_pos_x"},", ",{storage:"aspectlib:dummy",nbt:"limbo_origin_pos_y"},", ",{storage:"aspectlib:dummy",nbt:"limbo_origin_pos_z"},"]"]}]}

# Generate Overworld Positon
data modify storage aspectlib:dummy limbo_origin_dimension set value "minecraft:overworld"
execute store result storage aspectlib:dummy limbo_origin_pos_x double 8 run random value -8..8 filcher:aspect/filcher/generate_overworld_position
execute store result storage aspectlib:dummy limbo_origin_pos_y double 10 run random value 32..64 filcher:aspect/filcher/generate_overworld_position
execute store result storage aspectlib:dummy limbo_origin_pos_z double 8 run random value -8..8 filcher:aspect/filcher/generate_overworld_position
## Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},{selector:"@s",color:"gold"}," was missing an origin point. Generated new ones instead at ",{text:"",color:"gold",extra:["[\"",{storage:"aspectlib:dummy",nbt:"limbo_origin_dimension"},"\", ",{storage:"aspectlib:dummy",nbt:"limbo_origin_pos_x"},", ",{storage:"aspectlib:dummy",nbt:"limbo_origin_pos_y"},", ",{storage:"aspectlib:dummy",nbt:"limbo_origin_pos_z"},"]"]}]}
