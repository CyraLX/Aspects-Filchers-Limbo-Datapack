# If data is missing, create
$execute unless data storage aspectlib:users player.$(id).filched.pack_format run data modify storage aspectlib:users player.$(id).filched.pack_format set value {previous: 0, current: 0}
# Update previous pack_format
$data modify storage aspectlib:users player.$(id).filched.pack_format.previous set from storage aspectlib:users player.$(id).filched.pack_format.current
# Update current pack_format
$execute store result storage aspectlib:users player.$(id).filched.pack_format.current int 1 run scoreboard players get #filched filched.pack_format
