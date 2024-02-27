scoreboard players set ticks nn_spawn 20
$say $(bot_name) $(id) $(map)
$execute unless entity @e[tag=$(bot_name)] run scoreboard players set spawn nn_nextbot_spawn $(id)
$tp @e[tag=$(bot_name)_z] @e[tag=$(map),limit=1,sort=random]
execute if score ticks nn_spawn <= 0 nn_lobby run function nnb_spawnsystem:map_detect