#> Music system


#> Screen effects
scoreboard players add beat nn_possession_effect 1
execute if score beat nn_possession_effect >= reset nn_beat run function nnb_possessions:effects/nextbot_screen

#> Music
scoreboard players add @a[tag=nextbot] nn_possession_effect 1
execute as @a[tag=nextbot] if score @s nn_possession_effect >= loop nn_beat run function nnb_possessions:music/possession
