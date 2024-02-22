kill @e[tag=mrl]
stopsound @a[tag=nextbot_timeout] * vibecraft:possession_bside
tag @a[scores={nn_possesion=55},tag=nextbot_timeout] remove nextbot
tag @a[scores={nn_possesion=55},tag=nextbot_timeout] remove mrl_z
scoreboard players set @a[tag=nextbot_timeout] nn_possesion 0
tag @a[tag=nextbot_timeout] remove b_nextbot
tag @a[tag=nextbot_timeout] remove nextbot_timeout