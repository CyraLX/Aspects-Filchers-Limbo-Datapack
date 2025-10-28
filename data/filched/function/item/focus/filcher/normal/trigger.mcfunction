# Do not continue if user is riding something
execute if predicate aspectlib:has_vehicle run return run playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1 2

# Expose player id for further functions
function aspectlib:player/id/expose
# Run seperate functions if in limbo...
execute if predicate filched:dimension/limbo/is_located run return run function filched:item/focus/filcher/normal/in_limbo
# ... and outside of it
function filched:item/focus/filcher/normal/in_other
