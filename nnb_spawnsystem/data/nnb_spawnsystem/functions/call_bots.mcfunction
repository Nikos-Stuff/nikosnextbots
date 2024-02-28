$data modify storage nnb_spawnsystem:temp map set value $(sel_map)
execute store result storage nnb_spawnsystem:temp id int 1 run scoreboard players get spawn nn_spawn
execute store result storage nnb_spawnsystem:temp limit int 1 run scoreboard players get random_r nn_spawn
execute store result storage nnb_spawnsystem:__storage__ switch_key int 1 run scoreboard players get spawn nn_spawn
function nnb_spawnsystem:__private__/switch_case/1/select with storage nnb_spawnsystem:__storage__
scoreboard players remove ticks nn_spawn 1
execute if score ticks nn_spawn matches ..9 store result score botscount nn_spawn if entity @e[type=!player,tag=nextbot] setup_bots() with storage nnb_spawnsystem:temp