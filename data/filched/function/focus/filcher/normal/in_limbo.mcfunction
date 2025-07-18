# Stop further execution if the aspect is not Filcher
execute unless predicate filched:aspect/filcher/is_active run return fail

function filched:focus/filcher/normal/expose_player_location with storage aspectlib:dummy
function filched:focus/filcher/normal/anchor/prepare_to_teleport_out
