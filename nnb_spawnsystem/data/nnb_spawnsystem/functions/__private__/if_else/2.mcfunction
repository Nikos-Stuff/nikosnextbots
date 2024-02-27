$say $(bot_name) $(id) $(map)
scoreboard players set ticks nn_spawn 20
$tp @e[tag=$(bot_name)_z] @e[tag=$(map),limit=1,sort=random]