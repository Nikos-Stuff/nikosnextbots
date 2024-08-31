function nnb_main:lobby_music
function nnb_main:hide_as_names
execute store result score online nn_lobby if entity @a
function nnb_main:round_manager
execute if score start_timer nn_lobby matches 1 run function nnb_main:timer_msec