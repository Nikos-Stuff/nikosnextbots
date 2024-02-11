#> Nextbots possession 


#> ------------------ metal_pipe | id 1

#> Reset on timeout
execute if entity @a[scores={nn_possesion=1},tag=nextbot_timeout] run function nnb_possessions:1/metal_pipe_end

#> Teleport sprite and assign tags 
execute if entity @a[scores={nn_possesion=1},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=1},tag=!nextbot_timeout] add metal_pipe_z
execute at @a[tag=metal_pipe_z] run tp @e[tag=metal_pipe] ~ ~2 ~
#> Screen effects tag
tag @a[tag=metal_pipe_z] add n_nextbot