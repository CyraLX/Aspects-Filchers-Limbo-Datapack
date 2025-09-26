advancement revoke @s only filched:item/focus/filcher/use

execute unless predicate aspectlib:flags/is_alive run return fail

execute unless predicate filched:dimension/limbo/is_located run return run function filched:item/focus/filcher/normal/trigger
execute if predicate filched:item/focus/filcher/is_using_move_anchor run return run function filched:item/focus/filcher/crouched/trigger
function filched:item/focus/filcher/normal/trigger
