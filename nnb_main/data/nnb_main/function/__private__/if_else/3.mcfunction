scoreboard players set phase nn_lobby 3
tellraw @a {"text":" \u2139 | Starting Phase 3","color":"gray","type":"text"}
tellraw @a {"text":" \u2139 | We will pick some maps now...","color":"gray","type":"text"}
scoreboard players set min nn_lobby 0
scoreboard players set sec nn_lobby 40
scoreboard players set start_timer nn_lobby 0
tag @e[type=minecraft:pig,limit=1,sort=random,tag=] add map_1
tag @e[tag=map_1] remove map_2
tag @e[tag=map_1] remove map_3
tag @e[type=minecraft:pig,limit=1,sort=random,tag=] add map_2
tag @e[tag=map_2] remove map_1
tag @e[tag=map_2] remove map_3
tag @e[type=minecraft:pig,limit=1,sort=random,tag=] add map_3
tag @e[tag=map_3] remove map_1
tag @e[tag=map_3] remove map_2
tellraw @a {"text":" \u2139 | Maps has been picked!","color":"gray","type":"text"}
scoreboard players set start_timer nn_lobby 1