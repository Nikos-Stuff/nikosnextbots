#> This is the main function, that will run once per tick


#> EFFECT FOR USE:
#> n_nextbot - normal red screen + normal music
#> c_nextbot - for chilly - blue screen + normal music
#> s_nextbot - for smile ghost - yellow screen + https://youtu.be/dReth48f528?feature=shared
#> b_nextbot - purple screen + https://youtu.be/yb_pmn8mPu4?si=nN-7VGzzMBUEYLO4

#> Ticks for possessor system
function nnb_possessions:assign
#> Ticks for music system
function nnb_possessions:music
#> Tick for timer
function nnb_possessions:timer

#> Set default stuff and yeet the player on the timeout
scoreboard players set @a nn_possession_effect 100000
execute as @a[tag=nextbot_timeout] run summon minecraft:lightning_bolt ~ ~ ~

schedule function nnb_possessions:tick