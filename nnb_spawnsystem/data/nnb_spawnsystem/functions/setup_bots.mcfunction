execute if score spawn nn_spawn matches 29 run scoreboard players set spawn nn_spawn 0
$execute unless entity @e[tag=$(bot_name)] run scoreboard players set spawn nn_nextbot_spawn $(id)
execute if score ticks nn_spawn matches 5 run function nnb_spawnsystem:tp_bots with storage nnb_spawnsystem:temp