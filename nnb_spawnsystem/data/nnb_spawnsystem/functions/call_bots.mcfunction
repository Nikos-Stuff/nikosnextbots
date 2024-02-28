$data modify storage nnb_spawnsystem:temp map set value $(sel_map)
execute store result storage nnb_spawnsystem:temp id int 1 run scoreboard players get spawn nn_spawn
execute store result storage nnb_spawnsystem:temp limit int 1 run scoreboard players get random_r nn_spawn
execute store result storage nnb_spawnsystem:__storage__ switch_key int 1 run scoreboard players get spawn nn_spawn
function nnb_spawnsystem:__private__/switch_case/1/select with storage nnb_spawnsystem:__storage__
scoreboard players remove ticks nn_spawn 1
execute if score ticks nn_spawn matches ..9 run function nnb_spawnsystem:setup_bots with storage nnb_spawnsystem:temp
function nnb_spawnsystem:root with storage nnb_spawnsystem:temp