scoreboard players set @p nn_deathscreen 60
execute at @a run playsound vibecraft:ded master @p ~ ~ ~ 1 1
gamemode spectator @p
function nnb_jumpscares:removetags
execute store result score title nn_deathscreen run random value 1..4
scoreboard players set @p nn_jumpscare 0
scoreboard players set @p nn_jumpscare_run 0