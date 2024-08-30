scoreboard players set max nn_lobbymusic 2180
$execute at @e[tag=lobby_music] run playsound vibecraft:bee_lobby master @a[distance=..1000.0] ~ ~ ~ 0.$(volume) 1
scoreboard players set __found_case__ __variable__ 1