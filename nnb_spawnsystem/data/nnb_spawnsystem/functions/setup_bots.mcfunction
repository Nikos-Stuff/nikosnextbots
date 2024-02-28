scoreboard players remove ticks nn_spawn 1
$execute unless entity @e[tag=$(bot_name)] run scoreboard players set spawn nn_nextbot_spawn $(id)
$execute if score ticks nn_spawn <= 1 nn_spawn run tp @e[tag=$(bot_name)_z,tag=!done] @e[tag=$(map),limit=1,sort=random]
$execute if score ticks nn_spawn <= 0 nn_spawn at @e[tag=$(bot_name)_z,tag=!done] run summon minecraft:lightning_bolt ~ ~ ~
$execute if score ticks nn_spawn <= 1 nn_spawn run tag @e[tag=$(bot_name)_z,tag=!done] add done
$execute if score ticks nn_spawn <= 1 nn_spawn run tellraw @a[tag=debug] "$(bot_name) $(id) $(map)"
execute if score ticks nn_spawn <= 1 nn_spawn run scoreboard players set ticks nn_spawn 20