#> Music system


#> Screen effects
scoreboard players add beat nn_possession_effect 1
execute if score beat nn_possession_effect >= reset nn_beat run function nnb_possessions:effects/possession

#> Music
execute as @a[tag=nextbot] run scoreboard players add @s nn_possession_effect 1
execute as @a[tag=nextbot] if score @s nn_possession_effect >= loop nn_beat run function nnb_possessions:music/possession
