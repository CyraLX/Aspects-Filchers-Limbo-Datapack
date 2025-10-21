tag @s add addon_uninstaller

execute if entity @p[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=!addon_uninstaller] run tellraw @a[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=!addon_uninstaller] [{translate:"%s has removed %s from this server!", color: "red", with: [{selector: "@s"}, {"translate":"[%s]","color":"#6e00c9", "with": [{"translate": "filched"}]}]}]
tellraw @a [{translate:"%s has been uninstalled from this server!", color: "red", with: [{"translate":"[%s]","color":"#6e00c9", "with": [{"translate": "filched"}]}]}]
tellraw @s [{translate:"Please remove the %s datapack/mod from this server/client and restart the server/client", color: "yellow", with: [{"translate":"[%s]","color":"#6e00c9", "with": [{"translate": "filched"}]}]}]
tellraw @a[tag=!addon_uninstaller] [{translate:"Please wait until an admin/owner restarts the server", color: "yellow", with: [{"translate":"[%s]","color":"#6e00c9", "with": [{"translate": "filched"}]}]}]
tellraw @a[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=addon_uninstaller] ""
tellraw @a[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=addon_uninstaller] {text: "This action can be partially undone by restarting the world without removing the datapack/mod", color: "green"}

tag @s remove addon_uninstaller

# Remove scoreboard objectives
scoreboard objectives remove filched.config.filcher.limbo_generation_range
scoreboard objectives remove filched.aspect_group.limbo_attuned
scoreboard objectives remove filched.focus.filcher.summoned_anchors
scoreboard objectives remove filched.pack_format
scoreboard objectives remove filched.pack_format.dependency.max
scoreboard objectives remove filched.pack_format.dependency.min
scoreboard objectives remove filched.version.get
scoreboard objectives remove filched.version.is_dev
scoreboard objectives remove filched.version.major
scoreboard objectives remove filched.version.minor
scoreboard objectives remove filched.version.release

# Reset other scoreboard scores
scoreboard players reset #filched

# Remove aspect definitions
data remove storage aspects:aspect_list filched:filcher

# Remove teams
team remove filched_wasted
