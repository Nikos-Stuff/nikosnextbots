scoreboard players set phase nn_lobby 5
tellraw @a {"text":" \u2139 | Starting Phase 5","color":"gray","type":"text"}
tellraw @a {"text":" \u2139 | Loading in stuff!","color":"gray","type":"text"}
mvload @e[tag=sel]
scoreboard players set start_timer nn_lobby 0