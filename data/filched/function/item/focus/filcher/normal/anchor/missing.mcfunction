# Generate a location in limbo and store it
function filched:item/focus/filcher/anchor/position/generate with storage aspectlib:dummy
# Teleport the player to the new location, if failed, clean up and try again
execute unless function filched:item/focus/filcher/normal/anchor/prepare_to_teleport_missing run return run function filched:item/focus/filcher/normal/anchor/missing_retry
# If new location is generated successfuly, update grounded position in storage
function filched:item/focus/filcher/anchor/position/update with storage aspectlib:dummy
# Summon Filcher Anchor at the new location
function filched:entity/filcher_anchor/summon
