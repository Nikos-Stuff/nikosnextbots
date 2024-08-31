scoreboard players set phase nn_lobby 4
tellraw @a {"text":" \u2139 | Starting Phase 4","color":"gray","type":"text"}
tellraw @a {"text":" \u2139 | Loading map that has won!","color":"gray","type":"text"}
scoreboard players set min nn_lobby 0
scoreboard players set sec nn_lobby 10
tellraw @a {"text":" \u2139 | Map has been loaded!","color":"gray","type":"text"}
scoreboard players set start_timer nn_lobby 0