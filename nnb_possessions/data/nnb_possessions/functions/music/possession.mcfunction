scoreboard players set @p nn_possession_effect 0

#> Normal
execute at @a[tag=n_nextbot] run playsound vibecraft:possession master @p ~ ~ ~ 1 
execute at @a[tag=n_nextbot] unless score @p nn_possesion_min matches -1 run title @p subtitle ["",{"score":{"name":"@p","objective":"nn_possesion_min"},"bold":true,"color":"red"},{"text":":","bold":true,"color":"red"},{"score":{"name":"@p","objective":"nn_possesion_sec"},"bold":true,"color":"red"}]

#> Blue
execute at @a[tag=c_nextbot] run playsound vibecraft:possession master @p ~ ~ ~ 1 
execute at @a[tag=c_nextbot] unless score @p nn_possesion_min matches -1 run title @p subtitle ["",{"score":{"name":"@p","objective":"nn_possesion_min"},"bold":true,"color":"aqua"},{"text":":","bold":true,"color":"aqua"},{"score":{"name":"@p","objective":"nn_possesion_sec"},"bold":true,"color":"aqua"}]

#> Yellow - Smile Ghost UST
execute at @a[tag=s_nextbot] run playsound vibecraft:smile_ghost_p master @p ~ ~ ~ 1 
execute at @a[tag=s_nextbot] unless score @p nn_possesion_min matches -1 run title @p subtitle ["",{"score":{"name":"@p","objective":"nn_possesion_min"},"bold":true,"color":"yellow"},{"text":":","bold":true,"color":"yellow"},{"score":{"name":"@p","objective":"nn_possesion_sec"},"bold":true,"color":"yellow"}]

#> Purple - Possession B Side
execute at @a[tag=b_nextbot] run playsound vibecraft:possession_b master @p ~ ~ ~ 1
execute at @a[tag=b_nextbot] unless score @p nn_possesion_min matches -1 run title @p subtitle ["",{"score":{"name":"@p","objective":"nn_possesion_min"},"bold":true,"color":"dark_purple"},{"text":":","bold":true,"color":"dark_purple"},{"score":{"name":"@p","objective":"nn_possesion_sec"},"bold":true,"color":"dark_purple"}]