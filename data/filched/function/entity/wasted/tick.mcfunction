# Run every 10 ticks...

function filched:entity/wasted/visuals
execute if predicate filched:entity/wasted/should_curse_equipment run function filched:entity/wasted/curse_equipment
