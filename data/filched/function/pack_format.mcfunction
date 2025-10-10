# Initialize our own version
scoreboard objectives add filched.version.release dummy
scoreboard objectives add filched.version.major dummy
scoreboard objectives add filched.version.minor dummy
scoreboard objectives add filched.version.is_dev dummy
# Define current version
scoreboard players set #filched filched.version.release 1
scoreboard players set #filched filched.version.major 0
scoreboard players set #filched filched.version.minor 1
scoreboard players set #filched filched.version.is_dev 0
# Initialize trigger to get current version
function filched:trigger/version/get/initialize

# Initialize our own pack format
scoreboard objectives add filched.pack_format dummy
scoreboard objectives add filched.pack_format.dependency.min dummy
scoreboard objectives add filched.pack_format.dependency.max dummy
# Define current pack format for this addon
scoreboard players set #filched filched.pack_format 1
# Define dependencies and supported min and max pack formats
scoreboard players set #filched aspects.pack_format.dependency.min 5
scoreboard players set #filched aspects.pack_format.dependency.max 6
