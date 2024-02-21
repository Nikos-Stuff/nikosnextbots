#> This is the total chaos lol

scoreboard objectives remove vip_sel_map_1
scoreboard objectives remove vip_sel_map_2
scoreboard objectives remove vip_sel_map_3


scoreboard objectives add vip_sel_map_1 dummy {"text":""}
scoreboard objectives add vip_sel_map_2 dummy {"text":""}
scoreboard objectives add vip_sel_map_3 dummy {"text":""}


execute if entity @e[name=nn_crossroads_classic,tag=map_1] run scoreboard objectives add vip_sel_map_1 dummy {"text":""}
execute if entity @e[name=nn_crossroads_classic,tag=map_2] run scoreboard objectives add vip_sel_map_2 dummy {"text":""}
execute if entity @e[name=nn_crossroads_classic,tag=map_3] run scoreboard objectives add vip_sel_map_3 dummy {"text":""}