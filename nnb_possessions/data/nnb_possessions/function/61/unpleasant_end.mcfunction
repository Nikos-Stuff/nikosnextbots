kill @e[tag=unpleasant]
stopsound @a[tag=nextbot_timeout] * vibecraft:possession
tag @a[scores={nn_possesion=61},tag=nextbot_timeout] remove nextbot
tag @a[scores={nn_possesion=61},tag=nextbot_timeout] remove unpleasant_z
scoreboard players set @a[tag=nextbot_timeout] nn_possesion 0
tag @a[tag=nextbot_timeout] remove b_nextbot
tag @a[tag=nextbot_timeout] remove nextbot_timeout