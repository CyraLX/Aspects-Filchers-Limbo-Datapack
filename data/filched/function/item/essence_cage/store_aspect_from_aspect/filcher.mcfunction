advancement revoke @s only filched:item/essence_cage/store_aspect_from_aspect/filcher

execute if predicate aspects:item/essence_cage/is_in_mainhand run return run function aspects:item/essence_cage/awaken/mainhand with storage aspects:registry aspect.filched:filcher

execute if predicate aspects:item/essence_cage/is_in_offhand run return run function aspects:item/essence_cage/awaken/offhand with storage aspects:registry aspect.filched:filcher
