# Revoke the trigger advancement if this function is called through that
execute if entity @s[advancements={filched:aspect_encyclopedia/give_aspect_picker=true}] run advancement revoke @s only filched:aspect_encyclopedia/give_aspect_picker

data modify storage aspectlib:dummy item_modifier set value "filched:aspect_picker"
function aspects:utility/summon_item with storage aspectlib:dummy
