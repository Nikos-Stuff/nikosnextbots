function nnb_spawnsystem:map_music
execute if score min nn_lobby >= 0 numbers run bossbar set minecraft:game name [{"score":{"name":"min","objective":"nn_lobby"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"sec","objective":"nn_lobby"},"color":"yellow"},{"text":" |","color":"dark_gray"},{"text":" Playing ","color":"aqua"},{"storage":"nnb_spawnsystem:temp","nbt":"map","color":"gold"}]