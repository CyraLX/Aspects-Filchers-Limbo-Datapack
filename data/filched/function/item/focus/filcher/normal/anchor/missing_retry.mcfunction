# Clean up location storage
function filched:item/focus/filcher/anchor/position/remove with storage aspectlib:cache temp
# Log
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#6e00c9",shadow_color:-14876619,extra:["[",{translate:"filched"},"]: "]},{selector:"@s",color:"gold"}," tried to create a new Limbo location at ",{text:"",color:"gold",extra:["[",{storage:"aspectlib:cache temp",nbt:"filcher_anchor_pos_x"},", ",{storage:"aspectlib:cache temp",nbt:"filcher_anchor_pos_y"},", ",{storage:"aspectlib:cache temp",nbt:"filcher_anchor_pos_z"},"]"]}," and failed, trying again..."]}
# Retry
function filched:item/focus/filcher/normal/anchor/missing
