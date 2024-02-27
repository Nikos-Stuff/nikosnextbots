$execute unless entity @e[tag=$(bot_name)] run scoreboard players set spawn nn_nextbot_spawn $(bot_id)
$tp @e[tag=$(bot_name)_z,tag=!done] @e[tag=$(map),limit=1,sort=random]
$tag @e[tag=$(bot_name)_z,tag=!done] add done