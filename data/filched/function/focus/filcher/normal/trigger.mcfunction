# Expose player id for further functions
function aspectlib:player/id/expose
# Run seperate functions if in limbo...
execute if predicate filched:dimension/limbo/is_located run return run function filched:focus/filcher/normal/in_limbo
# ... and outside of it
function filched:focus/filcher/normal/in_other
