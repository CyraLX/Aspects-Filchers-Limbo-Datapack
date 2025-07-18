# Initialize our own pack format
scoreboard objectives add filched.pack_format dummy
scoreboard objectives add filched.pack_format.dependency.min dummy
scoreboard objectives add filched.pack_format.dependency.max dummy
# Define current pack format for this addon
scoreboard players set #filched filched.pack_format 1
# Define dependencies and supported min and max pack formats
scoreboard players set #filched aspects.pack_format.dependency.min 3
scoreboard players set #filched aspects.pack_format.dependency.max 3
