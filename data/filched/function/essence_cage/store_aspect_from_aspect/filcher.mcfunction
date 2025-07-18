advancement revoke @s only filched:essence_cage/store_aspect_from_aspect/filcher

execute if predicate aspects:essence_cage/is_in_mainhand run return run function aspects:essence_cage/awaken/mainhand with storage aspects:aspect_list filched:filcher

execute if predicate aspects:essence_cage/is_in_offhand run return run function aspects:essence_cage/awaken/offhand with storage aspects:aspect_list filched:filcher
