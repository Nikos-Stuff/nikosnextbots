scoreboard players remove ticks nn_spawn 1
$say $(bot_name) $(id) $(map)
$execute unless entity @e[tag=$(bot_name)] run scoreboard players set spawn nn_nextbot_spawn $(id)
execute if score ticks nn_spawn <= 0 nn_lobby run function nnb_spawnsystem:__private__/if_else/2