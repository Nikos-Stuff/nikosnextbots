#> Tick miliseconds
execute ats @a[tag=nextbot] run scoreboard players remove @s nn_possesion_msec 1

#> Manage seconds
execute as @a[tag=nextbot] if score @s nn_possesion_msec <= 0 nn_possesion_msec run function nnb_possessions:timer/sec

#> Manage minutes
execute as @a[tag=nextbot] if score @s nn_possesion_sec <= 0 nn_possesion_msec run function nnb_possessions:timer/min



#> Add Timeout if the timer is 0 minutes
execute as @a[tag=nextbot] if score @s nn_possesion_min < 0 nn_possesion_msec run tag @s add nextbot_timeout