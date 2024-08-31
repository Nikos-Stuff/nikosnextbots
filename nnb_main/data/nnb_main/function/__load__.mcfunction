scoreboard objectives add __variable__ dummy
tellraw @a "Core Scripts Loaded"
function nnb_main:c_sb {"sc_name":"nn_lobbymusic"}
function nnb_main:c_sb {"sc_name":"nn_lobby"}
function nnb_main:c_sb {"sc_name":"nn_spawn"}
function nnb_main:c_sb {"sc_name":"nn_possesion"}
function nnb_main:c_sb {"sc_name":"nn_possesion_min"}
function nnb_main:c_sb {"sc_name":"nn_possesion_sec"}
function nnb_main:c_sb {"sc_name":"nn_possesion_msec"}
function nnb_main:c_sb {"sc_name":"nn_possession_effect"}
execute if score phase nn_lobby matches 2 if score min nn_lobby < 0 nn_lobby run function nnb_main:__private__/if_else/3
execute if score start_timer nn_lobby matches 1 run function nnb_main:timer_msec