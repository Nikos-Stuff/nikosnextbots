#> Nextbots possession 


#> ------------------ metal_pipe | id 1

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=nextbot] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot] run scoreboard players set @p nn_possesion 1
execute at @e[type=minecraft:zombie,tag=nextbot] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=nextbot] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=1}] run tag @p add nextbot


#> Reset on timeout
execute if entity @a[scores={nn_possesion=1},tag=nextbot_timeout] run function nnb_possessions:1/metal_pipe_end

#> Teleport sprite and assign tags 
execute if entity @a[scores={nn_possesion=1},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=1},tag=!nextbot_timeout] add metal_pipe_z
execute at @a[tag=metal_pipe_z] run tp @e[tag=metal_pipe] ~ ~2 ~

#> Screen effects tag
tag @a[tag=metal_pipe_z] add n_nextbot