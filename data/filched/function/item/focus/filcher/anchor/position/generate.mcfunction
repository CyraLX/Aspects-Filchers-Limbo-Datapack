# Generate `X`
execute store result storage aspectlib:dummy filcher_anchor_pos_x double 1 run random value -10000..10000 filcher:aspect/filcher/generate_anchor_position
# Generate `Y`
data modify storage aspectlib:dummy filcher_anchor_pos_y set value 0d
# Generate `z`
execute store result storage aspectlib:dummy filcher_anchor_pos_z double 1 run random value -10000..10000 filcher:aspect/filcher/generate_anchor_position

# Store new position coordinates
function filched:item/focus/filcher/anchor/position/store with storage aspectlib:dummy
