# Run every 10 ticks...

# Outline Particles
execute if entity @p[distance=..24, predicate=filched:aspect/filcher/is_active, predicate=filched:focus/filcher/has_any] positioned ~-8 ~-1 ~-8 align xyz run function filched:entity/filcher_anchor/show_outline

# Limit to every 10 runs (this tick functions runs every 10 ticks already)
execute unless predicate aspectlib:periodic_tick/100 run return fail
# Store owner data for macros
data remove storage aspectlib:dummy filcher_anchor_owner
data modify storage aspectlib:dummy filcher_anchor_owner set from entity @s data.filched.filcher_anchor.owner
# Run update macros
## Update stored owner data with potential new ones
function filched:entity/filcher_anchor/update_owner_data/check with storage aspectlib:dummy filcher_anchor_owner
## Check if this Anchor is not currently active for the owner, of if the owner is no longer a Filcher
function filched:entity/filcher_anchor/check_if_outdated with storage aspectlib:dummy filcher_anchor_owner
