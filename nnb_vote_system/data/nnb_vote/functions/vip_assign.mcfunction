#> This is the total chaos lol

scoreboard objectives remove vip_sel_map_1
scoreboard objectives remove vip_sel_map_2
scoreboard objectives remove vip_sel_map_3




#> Crossroads Classic
execute if entity @e[name=nn_crossroads_classic,tag=vip_map_1] run scoreboard objectives add vip_sel_map_1 dummy {"text":""}
execute if entity @e[name=nn_crossroads_classic,tag=vip_map_2] run scoreboard objectives add vip_sel_map_2 dummy {"text":""}
execute if entity @e[name=nn_crossroads_classic,tag=vip_map_3] run scoreboard objectives add vip_sel_map_3 dummy {"text":""}


#> FlatGrass Arcade
execute if entity @e[name=nn_flatgrass_a,tag=vip_map_1] run scoreboard objectives add vip_sel_map_1 dummy {"text":""}
execute if entity @e[name=nn_flatgrass_a,tag=vip_map_2] run scoreboard objectives add vip_sel_map_2 dummy {"text":""}
execute if entity @e[name=nn_flatgrass_a,tag=vip_map_3] run scoreboard objectives add vip_sel_map_3 dummy {"text":""}


#> French Jail
















# If we failed to detect map icon - use temp placeholder image
scoreboard objectives add vip_sel_map_1 dummy {"text":""}
scoreboard objectives add vip_sel_map_2 dummy {"text":""}
scoreboard objectives add vip_sel_map_3 dummy {"text":""}