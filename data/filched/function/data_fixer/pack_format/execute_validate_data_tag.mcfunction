$data modify storage aspectlib:dummy filched_pack_format_previous set from storage aspectlib:player_$(id) filched.pack_format.previous
$data modify storage aspectlib:dummy filched_pack_format_current set from storage aspectlib:player_$(id) filched.pack_format.current
function #filched:data_fixer/pack_format/validate_data with storage aspectlib:dummy
