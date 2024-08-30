scoreboard players set playing nn_lobbymusic 1
scoreboard players set __found_case__ __variable__ 0
execute store result storage nnb_main:__storage__ switch_key int 1 run scoreboard players get track_number nn_lobbymusic
function nnb_main:__private__/switch_case/0/select with storage nnb_main:__storage__
execute unless score __found_case__ __variable__ matches 1 run function nnb_main:__private__/switch_case/0/default