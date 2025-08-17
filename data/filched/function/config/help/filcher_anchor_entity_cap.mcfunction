# Add seperator
tellraw @s ""
# Header
tellraw @s {"translate": "%s %s", "color": "#aaaaaa", "with": [{"translate":"[%s]:","color":"#6e00c9", "with": [{"translate": "filched"}]}, {"text":"FILCHER_ANCHOR_ENTITY_CAP","color":"gold"}]}
# Explanation
tellraw @s [{"text":"","color":"#aaaaaa","extra":[{"text":"> ","bold":true},{"text":"Defines the maximum amount of entities the Filcher Anchor can protect\n Setting this to 0 or less will disable the limit","italic":true,"extra":[{"text":"\n (This counts players so setting it to 10 will mean 9 other entities then the Filcher themselves can stay in a Filcher Anchor)","color":"#9e7070"}]}]}]
tellraw @s [{"text":"","color":"#aaaaaa","extra":[{"text":"/ ","bold":true},{"text":"Default: "},{"text":"24","color":"gold"}]}]
# Footer
tellraw @s {"text":"","color":"#aaaaaa","extra":[{"text":"\\","bold":true},{"text":" ", "underlined":true, "extra":[{"text":"Current: "},{"score":{"name":"#filched","objective":"filched.config.filcher_anchor_entity_cap"},"color":"gold"},{"text":" | ","bold":true},{"text":"Change Value","color":"blue","click_event":{"action":"suggest_command","command":"/scoreboard players set #filched filched.config.filcher_anchor_entity_cap "},"hover_event":{"action":"show_text","value":{"text":"Click to set a new Value"}}},{"text":" "}]},{"text":"/","bold":true}]}
