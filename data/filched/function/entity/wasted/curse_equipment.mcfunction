# Play sound to alert players of an applied curse
playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..16] ~ ~ ~ 1 1

# Curse equipment in the following order...
## Chestplate
execute if predicate filched:entity/wasted/can_curse/chest run return run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
## Leggings
execute if predicate filched:entity/wasted/can_curse/legs run return run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
## Helmet
execute if predicate filched:entity/wasted/can_curse/head run return run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
## Boots
execute if predicate filched:entity/wasted/can_curse/feet run return run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}

# If nothing was cursed make another sound
playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..16] ~ ~ ~ 1 0.5
