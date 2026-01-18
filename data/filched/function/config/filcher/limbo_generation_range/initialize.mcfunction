# Determines the range in blocks which new Filcher locations are picked when trying to enter Limbo for the first time or without an active Filcher Anchor.
# (10000 means a random location between 10000 and -10000 will be picked)
# Default: 10000
scoreboard objectives add filched.config.filcher.limbo_generation_range dummy
execute unless score #filched filched.config.filcher.limbo_generation_range = #filched filched.config.filcher.limbo_generation_range run scoreboard players set #filched filched.config.filcher.limbo_generation_range 10000

