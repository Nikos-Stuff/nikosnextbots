#> Tick miliseconds
execute at @a[tag=nextbot] run scoreboard players remove @p nn_possesion_msec 1

#> 
execute at @a[tag=nextbot] if score @p nn_possesion_msec <= 0 nn_possesion_msec run function nnb_possessions:timer/sec


execute at @a[tag=nextbot] if score @p nn_possesion_sec <= 0 nn_possesion_msec run function nnb_possessions:timer/min
scoreboard players set @p nn_possesion_sec 59
execute at @a[tag=nextbot] run scoreboard players remove @p nn_possesion_min 1


#> Add Timeout
execute at @a[tag=nextbot] if score @p nn_possesion_min < 0 nn_possesion_msec run tag @p add nextbot_timeout