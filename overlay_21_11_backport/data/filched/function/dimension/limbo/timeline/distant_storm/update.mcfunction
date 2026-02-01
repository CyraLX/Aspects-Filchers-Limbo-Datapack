# Store random offset for the effects
## Randomize X
scoreboard players reset #filched aspectlib.dummy
execute store result score #filched aspectlib.dummy run random value 0..1 filched:dimension/limbo/distant_storm_offsets
execute if score #filched aspectlib.dummy matches 0 run data modify storage aspectlib:dummy random_x set value -64
execute if score #filched aspectlib.dummy matches 1 run data modify storage aspectlib:dummy random_x set value 64
## Randomize Z
scoreboard players reset #filched aspectlib.dummy
execute store result score #filched aspectlib.dummy run random value 0..1 filched:dimension/limbo/distant_storm_offsets
execute if score #filched aspectlib.dummy matches 0 run data modify storage aspectlib:dummy random_z set value -64
execute if score #filched aspectlib.dummy matches 1 run data modify storage aspectlib:dummy random_z set value 64
# Store current day's time
scoreboard players reset #filched aspectlib.dummy
execute store result score #filched aspectlib.dummy run time query daytime

# Play initial distant storm effects to players
execute if score #filched aspectlib.dummy matches 15020 as @a[distance=0..] at @s run return run function filched:dimension/limbo/timeline/distant_storm/effects/initial with storage aspectlib:dummy
# Play follow-up distant storm effects to players
execute if score #filched aspectlib.dummy matches 15220 as @a[distance=0..] at @s run return run function filched:dimension/limbo/timeline/distant_storm/effects/followup with storage aspectlib:dummy
