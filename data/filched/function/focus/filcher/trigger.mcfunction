advancement revoke @s only filched:focus/filcher/use

execute unless predicate filched:dimension/limbo/is_located run return run function filched:focus/filcher/normal/trigger
execute if predicate filched:focus/filcher/is_using_move_anchor run return run function filched:focus/filcher/crouched/trigger
function filched:focus/filcher/normal/trigger
