scoreboard players remove msec nn_lobby 1
scoreboard players set __if_else__ __variable__ 0
execute if score sec nn_lobby < 10 numbers run function nnb_main:__private__/if_else/9
execute if score __if_else__ __variable__ matches 0 run bossbar set minecraft:game name [{"score":{"name":"min","objective":"nn_lobby"},"color":"yellow"},{"text":" : ","color":"yellow"},{"score":{"name":"sec","objective":"nn_lobby"},"color":"yellow"}]