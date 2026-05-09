$data modify storage aspectlib:cache temp.filched_pack_format_previous set from storage aspectlib:users player.$(id).filched.pack_format.previous
$data modify storage aspectlib:cache temp.filched_pack_format_current set from storage aspectlib:users player.$(id).filched.pack_format.current
function #filched:data_fixer/pack_format/validate_data with storage aspectlib:cache temp
