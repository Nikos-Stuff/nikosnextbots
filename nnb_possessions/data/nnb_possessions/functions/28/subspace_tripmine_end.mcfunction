kill @e[tag=subspace_tripmine]
stopsound @a[tag=nextbot_timeout] * vibecraft:possession
tag @a[scores={nn_possesion=28},tag=nextbot_timeout] remove nextbot
tag @a[scores={nn_possesion=28},tag=nextbot_timeout] remove subspace_tripmine_z
scoreboard players set @a[tag=nextbot_timeout] nn_possesion 0
tag @a[tag=nextbot_timeout] remove b_nextbot
tag @a[tag=nextbot_timeout] remove nextbot_timeout