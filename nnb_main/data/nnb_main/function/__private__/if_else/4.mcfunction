scoreboard players set phase nn_lobby 4
tellraw @a {"text":" \u2139 | Starting Phase 4","color":"gray","type":"text"}
tellraw @a {"text":" \u2139 | Loading map that has won!","color":"gray","type":"text"}
execute if score map nn_map_vote_1 > map nn_map_vote_2 run tag @e[tag=map_1] add sel
execute if score map nn_map_vote_1 < map nn_map_vote_2 run tag @e[tag=map_1] remove sel
execute if score map nn_map_vote_1 > map nn_map_vote_3 run tag @e[tag=map_1] add sel
execute if score map nn_map_vote_1 < map nn_map_vote_3 run tag @e[tag=map_1] remove sel
execute if score map nn_map_vote_2 > map nn_map_vote_1 run tag @e[tag=map_2] add sel
execute if score map nn_map_vote_2 < map nn_map_vote_1 run tag @e[tag=map_2] remove sel
execute if score map nn_map_vote_2 > map nn_map_vote_3 run tag @e[tag=map_2] add sel
execute if score map nn_map_vote_2 < map nn_map_vote_3 run tag @e[tag=map_2] remove sel
execute if score map nn_map_vote_3 > map nn_map_vote_1 run tag @e[tag=map_3] add sel
execute if score map nn_map_vote_3 < map nn_map_vote_1 run tag @e[tag=map_3] remove sel
execute if score map nn_map_vote_3 > map nn_map_vote_2 run tag @e[tag=map_3] add sel
execute if score map nn_map_vote_3 < map nn_map_vote_2 run tag @e[tag=map_3] remove sel
tellraw @a [{"text":" \u2139 | Most voted map: ","color":"gray"},{"selector":"@e[tag=sel]","color":"yellow"}]
scoreboard players set min nn_lobby 0
scoreboard players set sec nn_lobby 10
tellraw @a {"text":" \u2139 | Map has been loaded!","color":"gray","type":"text"}
scoreboard players set start_timer nn_lobby 0