advancement revoke @s only filched:item/essence_cage_awakened/consume/filcher

# Set Aspect
function filched:aspect/filcher/activate

# Perform generic logic
function aspects:item/essence_cage_awakened/post-consume_effects with storage aspects:registry aspect."filched:filcher"
