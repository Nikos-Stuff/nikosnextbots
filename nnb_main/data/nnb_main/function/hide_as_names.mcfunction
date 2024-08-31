execute at @a if score @p nn_asplaced >= 1 nn_asplaced as @e[type=armor_stand] run data modify entity @s CustomNameVisible set value 0b
execute at @a if score @p nn_asplaced >= 1 nn_asplaced run tellraw @a {"text":" \u26a0| Optimizing Stuff...","color":"yellow","type":"text"}
execute at @a if score @p nn_asplaced >= 1 nn_asplaced run scoreboard players set @p nn_asplaced 0