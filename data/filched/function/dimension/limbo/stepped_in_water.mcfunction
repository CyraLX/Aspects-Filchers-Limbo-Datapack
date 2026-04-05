advancement revoke @s only filched:dimension/limbo/stepped_in_water

execute unless predicate filched:dimension/limbo/should_water_teleport run return fail

function aspectlib:expose/player/id
function filched:item/focus/filcher/normal/expose_player_location with storage aspectlib:dummy
function filched:item/focus/filcher/normal/anchor/prepare_to_teleport_out_solo