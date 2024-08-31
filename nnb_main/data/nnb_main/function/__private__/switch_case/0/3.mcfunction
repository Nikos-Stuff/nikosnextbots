scoreboard players set max nn_lobbymusic 3160
execute at @e[tag=lobby_music] at @a[distance=..100.0] run playsound vibecraft:sherbet_lobby master @p[limit=1] ~ ~ ~ 0.2 1
scoreboard players set __found_case__ __variable__ 1