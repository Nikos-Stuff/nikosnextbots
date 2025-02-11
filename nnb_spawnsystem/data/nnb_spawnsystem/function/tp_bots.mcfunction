$tp @e[tag=$(bot_name)_z,tag=!done] @e[tag=$(map),limit=1,sort=random]
$execute at @e[tag=$(bot_name)_z,tag=!done] run summon minecraft:lightning_bolt ~ ~ ~
$tag @e[tag=$(bot_name)_z,tag=!done] add done
$tellraw @a[tag=debug] {"text":"Spawned: $(bot_name) $(id) In: $(map)","color":"dark_gray"}
data modify storage nnb_spawnsystem:temp bot_name set value "EMPTY_SKIPPED"
$scoreboard players set ticks nn_spawn $(limit)
scoreboard players set exec_cooldown nn_spawn 0