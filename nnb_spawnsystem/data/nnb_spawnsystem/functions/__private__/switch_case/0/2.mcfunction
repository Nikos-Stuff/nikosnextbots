function nnb_spawnsystem:call_bots {"sel_map":"nn_poolrooms"}
scoreboard players add tick nn_map_music 1
scoreboard players set reset nn_map_music 1620
execute if score tick nn_map_music > reset nn_map_music run function nnb_spawnsystem:__private__/if_else/6