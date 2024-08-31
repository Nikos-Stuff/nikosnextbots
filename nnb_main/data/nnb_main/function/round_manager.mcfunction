scoreboard players set __if_else__ __variable__ 0
execute if score online nn_lobby >= req_players nn_lobby run function nnb_main:__private__/if_else/1
execute if score __if_else__ __variable__ matches 0 run function nnb_main:__private__/if_else/2