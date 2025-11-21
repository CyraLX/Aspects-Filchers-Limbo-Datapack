advancement revoke @s only filched:trigger/version/run
scoreboard players enable @s version.filched
scoreboard players set @s version.filched 0

tag @s add version_retriever

data remove storage aspectlib:dummy text_suffix
execute if score #filched filched.version.is_dev matches 1 run data modify storage aspectlib:dummy text_suffix set value "-dev"

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!version_retriever] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},{selector:"@s",color:"gold"}," checked this modification's version"]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},{text:"",color:gold,extra:["v",{score:{name:"#filched",objective:"filched.version.release"}},".",{score:{name:"#filched",objective:"filched.version.major"}},".",{score:{name:"#filched",objective:"filched.version.minor"}},{storage:"aspectlib:dummy",nbt:"text_suffix"}]}," (Pack Format: ",{score:{name:"#filched",objective:"filched.pack_format"},color:"gold"},")"]}

tag @s remove version_retriever
