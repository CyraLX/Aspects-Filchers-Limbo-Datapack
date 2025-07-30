# Play sound to alert players of an applied curse
playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..16] ~ ~ ~ 1 1

# Randomize what slot is cursed
execute store result score #aspects aspectlib.dummy run random value 1..4 filcher:wasted_curse_equipment

# Apply curse to the randomized slot
## If Head already is cursed, try another piece
execute if score #aspects aspectlib.dummy matches 1 if predicate filched:enchantment/limbo_curse/head/any run scoreboard players set #aspects aspectlib.dummy 2
## Curse Head
execute if score #aspects aspectlib.dummy matches 1 run return run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
## If Chest already is cursed, try another piece
execute if score #aspects aspectlib.dummy matches 2 if predicate filched:enchantment/limbo_curse/chest/any run scoreboard players set #aspects aspectlib.dummy 3
## Curse Chest
execute if score #aspects aspectlib.dummy matches 2 run return run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
## If Legs already is cursed, try another piece
execute if score #aspects aspectlib.dummy matches 3 if predicate filched:enchantment/limbo_curse/legs/any run scoreboard players set #aspects aspectlib.dummy 4
## Curse Legs
execute if score #aspects aspectlib.dummy matches 3 run return run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
## If Feet aren't cursed, curse them
execute unless predicate filched:enchantment/limbo_curse/feet/any run return run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}

# If nothing was cursed make another sound
playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..16] ~ ~ ~ 1 0.5
