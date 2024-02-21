scoreboard players set @p nn_deathscreen 60
playsound vibecraft:gameover weather @p ~ ~ ~ 1 1
effect give @p minecraft:blindness 5 255 true
execute at @a run playsound vibecraft:ded master @p ~ ~ ~ 1 1
gamemode spectator @p
function nnb_jumpscares:removetags
execute store result score title nn_deathscreen run random value 1..4
scoreboard players set @p nn_jumpscare 0
scoreboard players set @p nn_jumpscare_run 0
function nnb_jumpscares:removetags