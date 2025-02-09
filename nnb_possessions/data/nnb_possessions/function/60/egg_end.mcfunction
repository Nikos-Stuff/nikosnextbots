kill @e[tag=egg]
stopsound @a[tag=nextbot_timeout] * vibecraft:possession
tag @a[scores={nn_possesion=60},tag=nextbot_timeout] remove nextbot
tag @a[scores={nn_possesion=60},tag=nextbot_timeout] remove egg_z
scoreboard players set @a[tag=nextbot_timeout] nn_possesion 0
tag @a[tag=nextbot_timeout] remove b_nextbot
tag @a[tag=nextbot_timeout] remove nextbot_timeout