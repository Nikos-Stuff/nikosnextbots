scoreboard players set beat nn_possession_effect 0
execute at @a[tag=nextbot] run title @p times 0 2 15

#> Normal
execute at @a[tag=n_nextbot] run title @p title [{"text":"","color":"red","bold":true}]
execute at @a[tag=n_nextbot] unless score @p nn_possesion_min matches -1 run title @p actionbar ["",{"score":{"name":"@p","objective":"nn_possesion_min"},"bold":true,"color":"red"},{"text":":","bold":true,"color":"red"},{"score":{"name":"@p","objective":"nn_possesion_sec"},"bold":true,"color":"red"},{"text":" | ","bold":false,"color":"dark_gray"},{"score":{"name":"@p","objective":"nn_kills"},"bold":true,"color":"red"}]

#> Blue
execute at @a[tag=c_nextbot] run title @p title [{"text":"","color":"aqua","bold":true}]
execute at @a[tag=c_nextbot] unless score @p nn_possesion_min matches -1 run title @p actionbar ["",{"score":{"name":"@p","objective":"nn_possesion_min"},"bold":true,"color":"aqua"},{"text":":","bold":true,"color":"aqua"},{"score":{"name":"@p","objective":"nn_possesion_sec"},"bold":true,"color":"aqua"},{"text":" | ","bold":false,"color":"dark_gray"},{"score":{"name":"@p","objective":"nn_kills"},"bold":true,"color":"aqua"}]

#> Yellow - Smile Ghost UST
execute at @a[tag=s_nextbot] run title @p title [{"text":"","color":"yellow","bold":true}]
execute at @a[tag=s_nextbot] unless score @p nn_possesion_min matches -1 run title @p actionbar ["",{"score":{"name":"@p","objective":"nn_possesion_min"},"bold":true,"color":"yellow"},{"text":":","bold":true,"color":"yellow"},{"score":{"name":"@p","objective":"nn_possesion_sec"},"bold":true,"color":"yellow"},{"text":" | ","bold":false,"color":"dark_gray"},{"score":{"name":"@p","objective":"nn_kills"},"bold":true,"color":"yellow"}]

#> Purple - Possession B Side
execute at @a[tag=b_nextbot] run title @p title [{"text":"","color":"dark_purple","bold":true}]
execute at @a[tag=b_nextbot] unless score @p nn_possesion_min matches -1 run title @p actionbar ["",{"score":{"name":"@p","objective":"nn_possesion_min"},"bold":true,"color":"dark_purple"},{"text":":","bold":true,"color":"dark_purple"},{"score":{"name":"@p","objective":"nn_possesion_sec"},"bold":true,"color":"dark_purple"},{"text":" | ","bold":false,"color":"dark_gray"},{"score":{"name":"@p","objective":"nn_kills"},"bold":true,"color":"dark_purple"}]

