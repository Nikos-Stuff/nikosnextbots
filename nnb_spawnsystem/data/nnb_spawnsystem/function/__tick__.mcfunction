function nnb_spawnsystem:root
execute if score disable nn_spawn matches 0 run function nnb_spawnsystem:__private__/if_else/1
execute if score started nn_lobby matches 1 run function nnb_spawnsystem:timer_msec