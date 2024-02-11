kill @e[tag=jack]
stopsound @a[tag=nextbot_timeout] * vibecraft:possession
tag @a[scores={nn_possesion=43},tag=nextbot_timeout] remove nextbot
tag @a[scores={nn_possesion=43},tag=nextbot_timeout] remove jack_z
scoreboard players set @a[tag=nextbot_timeout] nn_possesion 0
tag @a[tag=nextbot_timeout] remove n_nextbot
tag @a[tag=nextbot_timeout] remove nextbot_timeout