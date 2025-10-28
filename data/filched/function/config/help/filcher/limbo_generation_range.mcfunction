# Add seperator
tellraw @s ""
# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},{text:"FILCHER_LIMBO_GENERATION_RANGE",color:"gold"}]}
# Explanation
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{text:"What range in blocks should new Filcher locations be picked when trying to enter Limbo for the first time or without an active Filcher Anchor",italic:true,extra:[{text:"\n (10000 means a random location between 10000 and -10000 will be picked)",color:"#9e9e70"}]}]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"/ ",bold:true},"Default: ",{text:"10000",color:"aqua"}]}
# Footer
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{score:{name:"#filched",objective:"filched.config.filcher.limbo_generation_range"},color:"aqua"},{text:" | ",bold:true},{text:"Change Value",color:"blue",click_event:{action:"suggest_command",command:"/scoreboard players set #filched filched.config.filcher.limbo_generation_range "},hover_event:{action:"show_text",value:"Click to set a new Value"}}," "]},{text:"/",bold:true}]}
