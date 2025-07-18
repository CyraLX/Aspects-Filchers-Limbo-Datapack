# Play sound to alert players of an applied curse
playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..16] ~ ~ ~ 1 1
# Randomize what slot is cursed
execute store result score #aspects aspectlib.dummy run random value 1..4 filcher:wasted_curse_equipment
# Apply curse to the randomized slot
execute if score #aspects aspectlib.dummy matches 1 run return run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
execute if score #aspects aspectlib.dummy matches 2 run return run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
execute if score #aspects aspectlib.dummy matches 3 run return run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"filched:limbo_curse":1}}
