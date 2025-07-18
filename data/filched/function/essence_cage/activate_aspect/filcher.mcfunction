advancement revoke @s only filched:essence_cage/consume_awakened_cage/filcher

# Set Aspect
function filched:aspect/filcher/activate

# Perform generic logic
function aspects:essence_cage/activate_aspect/generic with entity @s equipment.body.components."minecraft:custom_data".aspects
