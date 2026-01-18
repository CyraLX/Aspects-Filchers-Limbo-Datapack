# Add seperator
tellraw @s ""
# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",extra:["[",{translate:"filched"},"]: "]},{translate:"config.filched.filcher.limbo_generation_range",color:"gold"}]}
# Current Value
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{translate:"dialog.aspects.configs.entry.current",with:[{score:{name:"#filched", objective:"filched.config.filcher.limbo_generation_range"},color:"blue"}]}]}
