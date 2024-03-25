$data modify storage nnb_spawnsystem:music m_name set value $(map_ambient_name)
$scoreboard players set reset nn_map_music $(map_ambient_lenght)
scoreboard players add tick nn_map_music 1
execute if score tick nn_map_music > reset nn_map_music run function nnb_spawnsystem:__private__/if_else/6