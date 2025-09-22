tag @s add addon_uninstaller

execute if entity @p[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=!addon_uninstaller] run tellraw @a[tag=get_debug_logs, tag=get_debug_logs_expanded, tag=!addon_uninstaller] [{translate:"%s is considering removing %s from this server!", color: "red", with: [{selector: "@s"}, {"translate":"[%s]","color":"#6e00c9", "with": [{"translate": "filched"}]}]}]
tellraw @s [{translate:"Before removing %s from this server, consider the following:", color: "yellow", with: [{"translate":"[%s]","color":"#6e00c9", "with": [{"translate": "filched"}]}]}]
tellraw @s [{text: "- All players should not be any Aspect added by this addon", color: "#aaaaaa"}]
tellraw @s [{text: "- Player Storage Data will still contain this addon's data, but will be unused unless reinstalled", color: "#aaaaaa"}]
tellraw @s [{text: "- Items/Entities created by this addon will still remain in the world", color: "#aaaaaa"}]
tellraw @s [{text: "- Dimension \"Limbo\" region data will NOT be automatically deleted, you will need to do so manually in the world save", color: "#aaaaaa"}]
tellraw @s ""
tellraw @s [{translate: "Are you sure you want to remove %s from this server?", color: "yellow", with: [{"translate":"[%s]","color":"#6e00c9", "with": [{"translate": "filched"}]}]}]
tellraw @s [" ", {text: "> Yes, I know what I am doing", color: "blue", underlined: true, hover_event: {action: "show_text", value: "Click to confirm"}, click_event: {action: "run_command", command: "/function filched:uninstall/accept"}}]

tag @s remove addon_uninstaller