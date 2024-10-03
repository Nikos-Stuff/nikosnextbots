kill @e[tag=smile_ghost]
stopsound @a[tag=nextbot_timeout] * vibecraft:smile_ghost_p
tag @a[scores={nn_possesion=5},tag=nextbot_timeout] remove nextbot
tag @a[scores={nn_possesion=5},tag=nextbot_timeout] remove smile_ghost_z
scoreboard players set @a[tag=nextbot_timeout] nn_possesion 0
tag @a[tag=nextbot_timeout] remove s_nextbot
tag @a[tag=nextbot_timeout] remove nextbot_timeout