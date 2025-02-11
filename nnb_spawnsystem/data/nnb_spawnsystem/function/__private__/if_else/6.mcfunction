scoreboard players set exec_cooldown nn_spawn 1
execute if score spawn nn_spawn matches 29 run scoreboard players set spawn nn_spawn 0
function nnb_spawnsystem:clear_bugged
$execute unless entity @e[tag=$(bot_name)] unless entity @e[tag=$(bot_name)_z] run scoreboard players set spawn nn_nextbot_spawn $(id)
function nnb_spawnsystem:tp_bots with storage nnb_spawnsystem:temp