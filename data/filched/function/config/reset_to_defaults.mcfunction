# Give temporary tag
tag @s add aspectlib.config_changer
# Give feedback in chat
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspectlib.config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},{selector:"@s",color:"gold"}," reset all configs to default values"]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},"Configs reset to default values"]}
# Set scoreboard
function #filched:config/default
# Cleanup
tag @s remove aspectlib.config_changer
