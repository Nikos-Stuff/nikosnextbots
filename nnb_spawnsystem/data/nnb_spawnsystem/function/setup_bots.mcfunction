execute if score spawn nn_spawn matches 29 run scoreboard players set spawn nn_spawn 0
function nnb_spawnsystem:clear_bugged
execute if score exec_cooldown nn_spawn matches 0 run function nnb_spawnsystem:__private__/if_else/6
execute if score ticks nn_spawn matches ..2 run function nnb_spawnsystem:__private__/if_else/7