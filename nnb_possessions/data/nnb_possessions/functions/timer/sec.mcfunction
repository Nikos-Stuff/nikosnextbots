scoreboard players set @p nn_possesion_msec 20
tellraw @a[tag=debug] {"text":"Tick"}
execute as @a[tag=nextbot] run scoreboard players remove @s nn_possesion_sec 1