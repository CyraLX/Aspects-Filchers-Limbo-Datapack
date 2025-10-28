tag @s add addon_uninstaller

execute if entity @p[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=!addon_uninstaller] run tellraw @a[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=!addon_uninstaller] {text:"",color:"red",extra:[{selector:"@s",color:"gold"}," is considering removing \"",{"text":"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]"]},"\" from this server/world!"]}
tellraw @s {text:"",color:"yellow",extra:["Before removing \"",{"text":"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]"]},"\" from this server/world, consider the following:"]}
tellraw @s [{text: "- All players should not be any Aspect added by this addon", color: "#aaaaaa"}]
tellraw @s [{text: "- Players with currently active Aspects from this addon may have broken attributes, requiring manual fixing or reinstall", color: "#aaaaaa"}]
tellraw @s [{text: "- Player Storage Data will still contain this addon's data, but will be unused unless reinstalled", color: "#aaaaaa"}]
tellraw @s [{text: "- Scoreboards from this addon will be reset on all entities", color: "#aaaaaa"}]
tellraw @s [{text: "- Items/Entities created by this addon will still remain in the world", color: "#aaaaaa"}]
tellraw @s [{text: "- Dimension \"Limbo\" region and level data will NOT be automatically deleted, you will need to do so manually in the world save", color: "#aaaaaa"}]
tellraw @s ""
tellraw @s {text:"",color:"yellow",extra:["Are you sure you want to remove \"",{"text":"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]"]},"\" from this server/world?"]}
tellraw @s [" ", {text: "> Yes, I know what I am doing", color: "blue", underlined: true, hover_event: {action: "show_text", value: "Click to confirm"}, click_event: {action: "run_command", command: "/function filched:uninstall/_"}}]

tag @s remove addon_uninstaller
