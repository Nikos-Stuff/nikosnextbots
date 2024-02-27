$say Map: $(sel_map)
scoreboard players set __found_case__ __variable__ 0
execute store result storage nnb_spawnsystem:__storage__ switch_key int 1 run scoreboard players get spawn nn_spawn
function nnb_spawnsystem:__private__/switch_case/1/select with storage nnb_spawnsystem:__storage__
execute unless score __found_case__ __variable__ matches 1 run function nnb_spawnsystem:__private__/switch_case/1/default