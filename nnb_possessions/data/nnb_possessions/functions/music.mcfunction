#> Music system

execute at @a[tag=nextbot] run scoreboard players add beat nn_possession_effect 1
execute if score beat nn_possession_effect >= reset nn_beat run function nnb_possessions:effects/n_nextbot