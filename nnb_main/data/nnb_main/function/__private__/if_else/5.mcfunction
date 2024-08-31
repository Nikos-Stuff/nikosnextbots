scoreboard players add tick nn_lobbymusic 1
execute if score tick nn_lobbymusic >= max nn_lobbymusic run function nnb_main:__private__/if_else/3
execute if score playing nn_lobbymusic matches 0 run function nnb_main:__private__/if_else/4