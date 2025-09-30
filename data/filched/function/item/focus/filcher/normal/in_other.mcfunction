# Store current location to teleport back to
function filched:item/focus/filcher/normal/store_player_location with storage aspectlib:dummy

# Stop further execution if the aspect is not Filcher
execute unless predicate filched:aspect/filcher/is_active run return fail
# Expose Filcher's Anchor position in Limbo for further functions
function filched:item/focus/filcher/anchor/position/expose with storage aspectlib:dummy
# If Filcher's Anchor position is not defined, generate a new one and run teleport logic
execute unless data storage aspectlib:dummy filcher_anchor_pos_x run return run function filched:item/focus/filcher/normal/anchor/missing
# Otherwise continue normal teleport logic
function filched:item/focus/filcher/normal/anchor/found
