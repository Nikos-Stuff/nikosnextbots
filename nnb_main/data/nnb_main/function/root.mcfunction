function nnb_main:lobby_music
function nnb_main:hide_as_names
execute store result score online nn_lobby if entity @a
function nnb_main:round_manager
function nnb_main:handle_french
execute if score start_timer nn_lobby matches 1 run function nnb_main:timer_msec
execute at @e[tag=nn_start_spawn] if entity @a[distance=..5.5] run tellraw @a ["",{"text":" \u2139 | Setting up player: ","color":"gray","type":"text"},{"color":"yellow","type":"selector","selector":"@a[distance=..5.5]"}]
execute at @e[tag=nn_start_spawn] if entity @a[distance=..5.5] run tp @p[distance=..5.5] @e[tag=nn_spawn,limit=1,sort=random]