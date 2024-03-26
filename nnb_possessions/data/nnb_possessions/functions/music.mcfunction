#> Music system


#> Screen effects
scoreboard players add beat nn_possession_effect 1
execute if score beat nn_possession_effect >= reset nn_beat run function nnb_possessions:effects/nextbot_screen

#> Music
scoreboard players add @a[tag=nextbot] nn_possession_effect 1
#> Set the lenght based on tag
scoreboard players set @a[tag=n_nextbot] nn_beat_r 3760
scoreboard players set @a[tag=c_nextbot] nn_beat_r 3760
scoreboard players set @a[tag=s_nextbot] nn_beat_r 2960
scoreboard players set @a[tag=b_nextbot] nn_beat_r 6100
execute at @a[tag=nextbot] if score @p nn_possession_effect >= @p nn_beat_r run function nnb_possessions:music/possession

#> End sound effect
execute at @a[tag=nextbot,tag=!played] if score @p nn_possesion_min matches 0 if score @p nn_possesion_sec matches 5 run playsound vibecraft:possession_timeout master @p ~ ~ ~ 1 1
execute at @a[tag=nextbot,tag=!played] if score @p nn_possesion_min matches 0 if score @p nn_possesion_sec matches 5 run tag @p add played
execute at @a[tag=nextbot,tag=played] if score @p nn_possesion_min matches 0 if score @p nn_possesion_sec matches 4 run tag @p remove played