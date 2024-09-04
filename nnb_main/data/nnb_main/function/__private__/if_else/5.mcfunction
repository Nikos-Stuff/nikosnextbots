scoreboard players set phase nn_lobby 5
tellraw @a {"text":" \u2139 | Starting Phase 5","color":"gray","type":"text"}
tellraw @a {"text":" \u2139 | Loading in stuff!","color":"gray","type":"text"}
execute at @e[tag=load_maps] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=nn_start_spawn] run tp @a ~ ~ ~
scoreboard players set start_timer nn_lobby 0