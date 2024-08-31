scoreboard players set __if_else__ __variable__ 0
execute if score botscount nn_spawn >= maxbots nn_spawn run function nnb_spawnsystem:__private__/if_else/0
execute if score __if_else__ __variable__ matches 0 run function nnb_spawnsystem:map_detect