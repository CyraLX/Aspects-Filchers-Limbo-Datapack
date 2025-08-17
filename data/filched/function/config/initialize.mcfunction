# Define scoreboards
## Defines the maximum amount of entities the Filcher Anchor can protect
## Setting this to 0 or less will disable the limit
## (This counts players so setting it to 10 will mean 9 other entities then the Filcher themselves can stay in a Filcher Anchor)
## Default: 24
scoreboard objectives add filched.config.filcher_anchor_entity_cap dummy

# Default scoreboards to default values if unset
execute unless score #filched filched.config.filcher_anchor_entity_cap = #filched filched.config.filcher_anchor_entity_cap run scoreboard players set #filched filched.config.filcher_anchor_entity_cap 24
