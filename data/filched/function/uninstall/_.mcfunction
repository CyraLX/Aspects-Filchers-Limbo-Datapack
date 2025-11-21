tag @s add addon_uninstaller

execute if entity @p[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=!addon_uninstaller] run tellraw @a[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=!addon_uninstaller] {text:"",color:"red",extra:[{selector:"@s",color:"gold"}," has uninstalled \"",{"text":"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]"]},"\" from this server/world!"]}
tellraw @a {text:"",color:"red",extra:[{"text":"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]"]}," has been uninstalled from this server/world!"]}
tellraw @s {text:"",color:"yellow",extra:["Please remove the ",{"text":"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]"]}," modification from this world/client and restart the world/client!"]}
tellraw @a[tag=!addon_uninstaller] {text:"",color:"yellow",extra:["Please wait until an admin/owner restarts the server..."]}
tellraw @a[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=addon_uninstaller] ""
tellraw @a[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=addon_uninstaller] {text: "This action can be partially undone by restarting the server/world without removing the modification", color: "green"}

tag @s remove addon_uninstaller

# Remove scoreboard objectives
scoreboard objectives remove filched.config.filcher.limbo_generation_range
scoreboard objectives remove filched.aspect_group.limbo_attuned
scoreboard objectives remove filched.focus.filcher.summoned_anchors
scoreboard objectives remove filched.pack_format
scoreboard objectives remove filched.pack_format.dependency.max
scoreboard objectives remove filched.pack_format.dependency.min
scoreboard objectives remove version.filched
scoreboard objectives remove filched.version.is_dev
scoreboard objectives remove filched.version.major
scoreboard objectives remove filched.version.minor
scoreboard objectives remove filched.version.release

# Reset other scoreboard scores
scoreboard players reset #filched

# Remove teams
team remove filched_wasted
