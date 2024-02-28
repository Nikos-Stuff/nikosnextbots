$tp @e[tag=$(bot_name)_z,tag=!done] @e[tag=$(map),limit=1,sort=random]
$execute at @e[tag=$(bot_name)_z,tag=!done] run summon minecraft:lightning_bolt ~ ~ ~
$tag @e[tag=$(bot_name)_z,tag=!done] add done
$tellraw @a[tag=debug] "$(bot_name) $(id) $(map)"
$scoreboard players set ticks nn_spawn $(limit)