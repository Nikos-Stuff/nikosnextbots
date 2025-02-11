scoreboard players set exec_cooldown nn_spawn 1
$execute unless entity @e[tag=$(bot_name)] unless entity @e[tag=$(bot_name)_z] run scoreboard players set spawn nn_nextbot_spawn $(id)