#> Tick miliseconds
execute at @a[tag=nextbot] run scoreboard players remove @p nn_possesion_msec 1

#> Manage seconds
execute at @a[tag=nextbot] if score @p nn_possesion_msec <= 0 nn_possesion_msec run function nnb_possessions:timer/sec

#> Manage minutes
execute at @a[tag=nextbot] if score @p nn_possesion_sec <= 0 nn_possesion_msec run function nnb_possessions:timer/min



#> Add Timeout if the timer is 0 minutes
execute at @a[tag=nextbot] if score @p nn_possesion_min < 0 nn_possesion_msec run tag @p add nextbot_timeout