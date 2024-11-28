#> Nextbots possession system



#> ------------------ metal_pipe | id 1

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=metal_pipe_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 1
execute at @e[type=minecraft:zombie,tag=metal_pipe_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=metal_pipe_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=1}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=1},tag=nextbot_timeout] run function nnb_possessions:1/metal_pipe_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=1},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=1},tag=!nextbot_timeout] add metal_pipe_z
execute at @a[tag=metal_pipe_z] run tp @e[tag=metal_pipe] ~ ~2 ~

#> Screen effects tag
tag @a[tag=metal_pipe_z] add n_nextbot




#> ------------------ toob | id 2

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=toob_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 2
execute at @e[type=minecraft:zombie,tag=toob_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=toob_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=2}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=2},tag=nextbot_timeout] run function nnb_possessions:2/toob_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=2},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=2},tag=!nextbot_timeout] add toob_z
execute at @a[tag=toob_z] run tp @e[tag=toob] ~ ~2 ~

#> Screen effects tag
tag @a[tag=toob_z] add n_nextbot




#> ------------------ crying_sans | id 3

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=crying_sans_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 3
execute at @e[type=minecraft:zombie,tag=crying_sans_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=crying_sans_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=3}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=3},tag=nextbot_timeout] run function nnb_possessions:3/crying_sans_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=3},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=3},tag=!nextbot_timeout] add crying_sans_z
execute at @a[tag=crying_sans_z] run tp @e[tag=crying_sans] ~ ~2 ~

#> Screen effects tag
tag @a[tag=crying_sans_z] add n_nextbot




#> ------------------ pbj | id 4

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=pbj_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 4
execute at @e[type=minecraft:zombie,tag=pbj_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=pbj_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=4}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=4},tag=nextbot_timeout] run function nnb_possessions:4/pbj_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=4},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=4},tag=!nextbot_timeout] add pbj_z
execute at @a[tag=pbj_z] run tp @e[tag=pbj] ~ ~2 ~

#> Screen effects tag
tag @a[tag=pbj_z] add n_nextbot




#> ------------------ smile_ghost | id 5

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=smile_ghost_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 5
execute at @e[type=minecraft:zombie,tag=smile_ghost_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=smile_ghost_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=5}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=5},tag=nextbot_timeout] run function nnb_possessions:5/smile_ghost_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=5},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=5},tag=!nextbot_timeout] add smile_ghost_z
execute at @a[tag=smile_ghost_z] run tp @e[tag=smile_ghost] ~ ~2 ~

#> Screen effects tag
tag @a[tag=smile_ghost_z] add s_nextbot




#> ------------------ idiot | id 6

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=idiot_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 6
execute at @e[type=minecraft:zombie,tag=idiot_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=idiot_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=6}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=6},tag=nextbot_timeout] run function nnb_possessions:6/idiot_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=6},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=6},tag=!nextbot_timeout] add idiot_z
execute at @a[tag=idiot_z] run tp @e[tag=idiot] ~ ~2 ~

#> Screen effects tag
tag @a[tag=idiot_z] add n_nextbot




#> ------------------ ohl | id 7

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=ohl_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 7
execute at @e[type=minecraft:zombie,tag=ohl_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=ohl_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=7}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=7},tag=nextbot_timeout] run function nnb_possessions:7/ohl_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=7},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=7},tag=!nextbot_timeout] add ohl_z
execute at @a[tag=ohl_z] run tp @e[tag=ohl] ~ ~2 ~

#> Screen effects tag
tag @a[tag=ohl_z] add n_nextbot




#> ------------------ meem | id 8

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=meem_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 8
execute at @e[type=minecraft:zombie,tag=meem_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=meem_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=8}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=8},tag=nextbot_timeout] run function nnb_possessions:8/meem_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=8},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=8},tag=!nextbot_timeout] add meem_z
execute at @a[tag=meem_z] run tp @e[tag=meem] ~ ~2 ~

#> Screen effects tag
tag @a[tag=meem_z] add n_nextbot




#> ------------------ nope | id 9

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=nope_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 9
execute at @e[type=minecraft:zombie,tag=nope_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=nope_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=9}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=9},tag=nextbot_timeout] run function nnb_possessions:9/nope_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=9},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=9},tag=!nextbot_timeout] add nope_z
execute at @a[tag=nope_z] run tp @e[tag=nope] ~ ~2 ~

#> Screen effects tag
tag @a[tag=nope_z] add n_nextbot




#> ------------------ noob | id 10

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=noob_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 10
execute at @e[type=minecraft:zombie,tag=noob_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=noob_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=10}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=10},tag=nextbot_timeout] run function nnb_possessions:10/noob_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=10},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=10},tag=!nextbot_timeout] add noob_z
execute at @a[tag=noob_z] run tp @e[tag=noob] ~ ~2 ~

#> Screen effects tag
tag @a[tag=noob_z] add n_nextbot




#> ------------------ observer | id 11

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=observer_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 11
execute at @e[type=minecraft:zombie,tag=observer_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=observer_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=11}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=11},tag=nextbot_timeout] run function nnb_possessions:11/observer_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=11},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=11},tag=!nextbot_timeout] add observer_z
execute at @a[tag=observer_z] run tp @e[tag=observer] ~ ~2 ~

#> Screen effects tag
tag @a[tag=observer_z] add n_nextbot




#> ------------------ benny | id 12

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=benny_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 12
execute at @e[type=minecraft:zombie,tag=benny_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=benny_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=12}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=12},tag=nextbot_timeout] run function nnb_possessions:12/benny_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=12},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=12},tag=!nextbot_timeout] add benny_z
execute at @a[tag=benny_z] run tp @e[tag=benny] ~ ~2 ~

#> Screen effects tag
tag @a[tag=benny_z] add n_nextbot




#> ------------------ racoon | id 13

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=racoon_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 13
execute at @e[type=minecraft:zombie,tag=racoon_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=racoon_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=13}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=13},tag=nextbot_timeout] run function nnb_possessions:13/racoon_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=13},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=13},tag=!nextbot_timeout] add racoon_z
execute at @a[tag=racoon_z] run tp @e[tag=racoon] ~ ~2 ~

#> Screen effects tag
tag @a[tag=racoon_z] add n_nextbot




#> ------------------ fazmug | id 14

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=fazmug_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 14
execute at @e[type=minecraft:zombie,tag=fazmug_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=fazmug_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=14}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=14},tag=nextbot_timeout] run function nnb_possessions:14/fazmug_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=14},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=14},tag=!nextbot_timeout] add fazmug_z
execute at @a[tag=fazmug_z] run tp @e[tag=fazmug] ~ ~2 ~

#> Screen effects tag
tag @a[tag=fazmug_z] add n_nextbot




#> ------------------ donot | id 15

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=donot_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 15
execute at @e[type=minecraft:zombie,tag=donot_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=donot_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=15}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=15},tag=nextbot_timeout] run function nnb_possessions:15/donot_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=15},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=15},tag=!nextbot_timeout] add donot_z
execute at @a[tag=donot_z] run tp @e[tag=donot] ~ ~2 ~

#> Screen effects tag
tag @a[tag=donot_z] add n_nextbot




#> ------------------ bear5 | id 16

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=bear5_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 16
execute at @e[type=minecraft:zombie,tag=bear5_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=bear5_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=16}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=16},tag=nextbot_timeout] run function nnb_possessions:16/bear5_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=16},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=16},tag=!nextbot_timeout] add bear5_z
execute at @a[tag=bear5_z] run tp @e[tag=bear5] ~ ~2 ~

#> Screen effects tag
tag @a[tag=bear5_z] add n_nextbot




#> ------------------ blabber | id 17

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=blabber_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 17
execute at @e[type=minecraft:zombie,tag=blabber_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=blabber_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=17}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=17},tag=nextbot_timeout] run function nnb_possessions:17/blabber_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=17},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=17},tag=!nextbot_timeout] add blabber_z
execute at @a[tag=blabber_z] run tp @e[tag=blabber] ~ ~2 ~

#> Screen effects tag
tag @a[tag=blabber_z] add n_nextbot




#> ------------------ chilly | id 18

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=chilly_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 18
execute at @e[type=minecraft:zombie,tag=chilly_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=chilly_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=18}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=18},tag=nextbot_timeout] run function nnb_possessions:18/chilly_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=18},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=18},tag=!nextbot_timeout] add chilly_z
execute at @a[tag=chilly_z] run tp @e[tag=chilly] ~ ~2 ~

#> Screen effects tag
tag @a[tag=chilly_z] add c_nextbot




#> ------------------ smurf_cat | id 19

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=smurf_cat_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 19
execute at @e[type=minecraft:zombie,tag=smurf_cat_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=smurf_cat_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=19}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=19},tag=nextbot_timeout] run function nnb_possessions:19/smurf_cat_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=19},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=19},tag=!nextbot_timeout] add smurf_cat_z
execute at @a[tag=smurf_cat_z] run tp @e[tag=smurf_cat] ~ ~2 ~

#> Screen effects tag
tag @a[tag=smurf_cat_z] add n_nextbot




#> ------------------ intruder | id 20

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=intruder_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 20
execute at @e[type=minecraft:zombie,tag=intruder_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=intruder_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=20}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=20},tag=nextbot_timeout] run function nnb_possessions:20/intruder_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=20},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=20},tag=!nextbot_timeout] add intruder_z
execute at @a[tag=intruder_z] run tp @e[tag=intruder] ~ ~2 ~

#> Screen effects tag
tag @a[tag=intruder_z] add n_nextbot




#> ------------------ jet | id 21

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=jet_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 21
execute at @e[type=minecraft:zombie,tag=jet_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=jet_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=21}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=21},tag=nextbot_timeout] run function nnb_possessions:21/jet_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=21},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=21},tag=!nextbot_timeout] add jet_z
execute at @a[tag=jet_z] run tp @e[tag=jet] ~ ~2 ~

#> Screen effects tag
tag @a[tag=jet_z] add n_nextbot




#> ------------------ darkness | id 22

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=darkness_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 22
execute at @e[type=minecraft:zombie,tag=darkness_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=darkness_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=22}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=22},tag=nextbot_timeout] run function nnb_possessions:22/darkness_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=22},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=22},tag=!nextbot_timeout] add darkness_z
execute at @a[tag=darkness_z] run tp @e[tag=darkness] ~ ~2 ~

#> Screen effects tag
tag @a[tag=darkness_z] add n_nextbot




#> ------------------ bear | id 23

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=bear_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 23
execute at @e[type=minecraft:zombie,tag=bear_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=bear_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=23}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=23},tag=nextbot_timeout] run function nnb_possessions:23/bear_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=23},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=23},tag=!nextbot_timeout] add bear_z
execute at @a[tag=bear_z] run tp @e[tag=bear] ~ ~2 ~

#> Screen effects tag
tag @a[tag=bear_z] add n_nextbot




#> ------------------ litlle_gerry | id 24

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=litlle_gerry_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 24
execute at @e[type=minecraft:zombie,tag=litlle_gerry_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=litlle_gerry_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=24}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=24},tag=nextbot_timeout] run function nnb_possessions:24/litlle_gerry_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=24},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=24},tag=!nextbot_timeout] add litlle_gerry_z
execute at @a[tag=litlle_gerry_z] run tp @e[tag=litlle_gerry] ~ ~2 ~

#> Screen effects tag
tag @a[tag=litlle_gerry_z] add n_nextbot




#> ------------------ winrar | id 25

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=winrar_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 25
execute at @e[type=minecraft:zombie,tag=winrar_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=winrar_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=25}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=25},tag=nextbot_timeout] run function nnb_possessions:25/winrar_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=25},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=25},tag=!nextbot_timeout] add winrar_z
execute at @a[tag=winrar_z] run tp @e[tag=winrar] ~ ~2 ~

#> Screen effects tag
tag @a[tag=winrar_z] add n_nextbot




#> ------------------ fan | id 26

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=fan_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 26
execute at @e[type=minecraft:zombie,tag=fan_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=fan_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=26}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=26},tag=nextbot_timeout] run function nnb_possessions:26/fan_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=26},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=26},tag=!nextbot_timeout] add fan_z
execute at @a[tag=fan_z] run tp @e[tag=fan] ~ ~2 ~

#> Screen effects tag
tag @a[tag=fan_z] add n_nextbot




#> ------------------ boykisser | id 27

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=boykisser_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 27
execute at @e[type=minecraft:zombie,tag=boykisser_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=boykisser_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=27}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=27},tag=nextbot_timeout] run function nnb_possessions:27/boykisser_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=27},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=27},tag=!nextbot_timeout] add boykisser_z
execute at @a[tag=boykisser_z] run tp @e[tag=boykisser] ~ ~2 ~

#> Screen effects tag
tag @a[tag=boykisser_z] add n_nextbot




#> ------------------ subspace_tripmine | id 28

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=subspace_tripmine_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 28
execute at @e[type=minecraft:zombie,tag=subspace_tripmine_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=subspace_tripmine_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=28}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=28},tag=nextbot_timeout] run function nnb_possessions:28/subspace_tripmine_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=28},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=28},tag=!nextbot_timeout] add subspace_tripmine_z
execute at @a[tag=subspace_tripmine_z] run tp @e[tag=subspace_tripmine] ~ ~2 ~

#> Screen effects tag
tag @a[tag=subspace_tripmine_z] add b_nextbot





#> ------------------ nuke | id 30

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=nuke_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 30
execute at @e[type=minecraft:zombie,tag=nuke_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=nuke_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=30}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=30},tag=nextbot_timeout] run function nnb_possessions:30/nuke_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=30},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=30},tag=!nextbot_timeout] add nuke_z
execute at @a[tag=nuke_z] run tp @e[tag=nuke] ~ ~2 ~

#> Screen effects tag
tag @a[tag=nuke_z] add n_nextbot




#> ------------------ flash | id 31

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=flash_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 31
execute at @e[type=minecraft:zombie,tag=flash_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=flash_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=31}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=31},tag=nextbot_timeout] run function nnb_possessions:31/flash_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=31},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=31},tag=!nextbot_timeout] add flash_z
execute at @a[tag=flash_z] run tp @e[tag=flash] ~ ~2 ~

#> Screen effects tag
tag @a[tag=flash_z] add n_nextbot




#> ------------------ osc | id 32

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=osc_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 32
execute at @e[type=minecraft:zombie,tag=osc_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=osc_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=32}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=32},tag=nextbot_timeout] run function nnb_possessions:32/osc_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=32},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=32},tag=!nextbot_timeout] add osc_z
execute at @a[tag=osc_z] run tp @e[tag=osc] ~ ~2 ~

#> Screen effects tag
tag @a[tag=osc_z] add n_nextbot




#> ------------------ cb | id 33

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=cb_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 33
execute at @e[type=minecraft:zombie,tag=cb_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=cb_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=33}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=33},tag=nextbot_timeout] run function nnb_possessions:33/cb_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=33},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=33},tag=!nextbot_timeout] add cb_z
execute at @a[tag=cb_z] run tp @e[tag=cb] ~ ~2 ~

#> Screen effects tag
tag @a[tag=cb_z] add n_nextbot




#> ------------------ dragon | id 34

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=dragon_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 34
execute at @e[type=minecraft:zombie,tag=dragon_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=dragon_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=34}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=34},tag=nextbot_timeout] run function nnb_possessions:34/dragon_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=34},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=34},tag=!nextbot_timeout] add dragon_z
execute at @a[tag=dragon_z] run tp @e[tag=dragon] ~ ~2 ~

#> Screen effects tag
tag @a[tag=dragon_z] add n_nextbot




#> ------------------ carter | id 35

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=carter_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 35
execute at @e[type=minecraft:zombie,tag=carter_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=carter_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=35}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=35},tag=nextbot_timeout] run function nnb_possessions:35/carter_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=35},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=35},tag=!nextbot_timeout] add carter_z
execute at @a[tag=carter_z] run tp @e[tag=carter] ~ ~2 ~

#> Screen effects tag
tag @a[tag=carter_z] add n_nextbot




#> ------------------ shroom | id 36

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=shroom_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 36
execute at @e[type=minecraft:zombie,tag=shroom_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=shroom_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=36}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=36},tag=nextbot_timeout] run function nnb_possessions:36/shroom_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=36},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=36},tag=!nextbot_timeout] add shroom_z
execute at @a[tag=shroom_z] run tp @e[tag=shroom] ~ ~2 ~

#> Screen effects tag
tag @a[tag=shroom_z] add n_nextbot




#> ------------------ grumbo | id 37

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=grumbo_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 37
execute at @e[type=minecraft:zombie,tag=grumbo_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=grumbo_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=37}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=37},tag=nextbot_timeout] run function nnb_possessions:37/grumbo_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=37},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=37},tag=!nextbot_timeout] add grumbo_z
execute at @a[tag=grumbo_z] run tp @e[tag=grumbo] ~ ~2 ~

#> Screen effects tag
tag @a[tag=grumbo_z] add n_nextbot




#> ------------------ giggle | id 38

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=giggle_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 38
execute at @e[type=minecraft:zombie,tag=giggle_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=giggle_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=38}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=38},tag=nextbot_timeout] run function nnb_possessions:38/giggle_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=38},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=38},tag=!nextbot_timeout] add giggle_z
execute at @a[tag=giggle_z] run tp @e[tag=giggle] ~ ~2 ~

#> Screen effects tag
tag @a[tag=giggle_z] add n_nextbot




#> ------------------ rei | id 39

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=rei_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 39
execute at @e[type=minecraft:zombie,tag=rei_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=rei_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=39}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=39},tag=nextbot_timeout] run function nnb_possessions:39/rei_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=39},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=39},tag=!nextbot_timeout] add rei_z
execute at @a[tag=rei_z] run tp @e[tag=rei] ~ ~2 ~

#> Screen effects tag
tag @a[tag=rei_z] add n_nextbot




#> ------------------ ico | id 40

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=ico_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 40
execute at @e[type=minecraft:zombie,tag=ico_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=ico_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=40}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=40},tag=nextbot_timeout] run function nnb_possessions:40/ico_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=40},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=40},tag=!nextbot_timeout] add ico_z
execute at @a[tag=ico_z] run tp @e[tag=ico] ~ ~2 ~

#> Screen effects tag
tag @a[tag=ico_z] add n_nextbot




#> ------------------ leorio | id 41

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=leorio_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 41
execute at @e[type=minecraft:zombie,tag=leorio_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=leorio_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=41}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=41},tag=nextbot_timeout] run function nnb_possessions:41/leorio_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=41},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=41},tag=!nextbot_timeout] add leorio_z
execute at @a[tag=leorio_z] run tp @e[tag=leorio] ~ ~2 ~

#> Screen effects tag
tag @a[tag=leorio_z] add n_nextbot




#> ------------------ mohu | id 42

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=mohu_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 42
execute at @e[type=minecraft:zombie,tag=mohu_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=mohu_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=42}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=42},tag=nextbot_timeout] run function nnb_possessions:42/mohu_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=42},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=42},tag=!nextbot_timeout] add mohu_z
execute at @a[tag=mohu_z] run tp @e[tag=mohu] ~ ~2 ~

#> Screen effects tag
tag @a[tag=mohu_z] add n_nextbot




#> ------------------ jack | id 43

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=jack_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 43
execute at @e[type=minecraft:zombie,tag=jack_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=jack_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=43}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=43},tag=nextbot_timeout] run function nnb_possessions:43/jack_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=43},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=43},tag=!nextbot_timeout] add jack_z
execute at @a[tag=jack_z] run tp @e[tag=jack] ~ ~2 ~

#> Screen effects tag
tag @a[tag=jack_z] add n_nextbot




#> ------------------ unfortunate | id 44

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=unfortunate_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 44
execute at @e[type=minecraft:zombie,tag=unfortunate_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=unfortunate_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=44}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=44},tag=nextbot_timeout] run function nnb_possessions:44/unfortunate_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=44},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=44},tag=!nextbot_timeout] add unfortunate_z
execute at @a[tag=unfortunate_z] run tp @e[tag=unfortunate] ~ ~2 ~

#> Screen effects tag
tag @a[tag=unfortunate_z] add n_nextbot




#> ------------------ lolguy | id 45

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=lolguy_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 45
execute at @e[type=minecraft:zombie,tag=lolguy_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=lolguy_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=45}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=45},tag=nextbot_timeout] run function nnb_possessions:45/lolguy_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=45},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=45},tag=!nextbot_timeout] add lolguy_z
execute at @a[tag=lolguy_z] run tp @e[tag=lolguy] ~ ~2 ~

#> Screen effects tag
tag @a[tag=lolguy_z] add n_nextbot




#> ------------------ smiler | id 46

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=smiler_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 46
execute at @e[type=minecraft:zombie,tag=smiler_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=smiler_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=46}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=46},tag=nextbot_timeout] run function nnb_possessions:46/smiler_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=46},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=46},tag=!nextbot_timeout] add smiler_z
execute at @a[tag=smiler_z] run tp @e[tag=smiler] ~ ~2 ~

#> Screen effects tag
tag @a[tag=smiler_z] add n_nextbot




#> ------------------ boba | id 47

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=boba_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 47
execute at @e[type=minecraft:zombie,tag=boba_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=boba_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=47}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=47},tag=nextbot_timeout] run function nnb_possessions:47/boba_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=47},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=47},tag=!nextbot_timeout] add boba_z
execute at @a[tag=boba_z] run tp @e[tag=boba] ~ ~2 ~

#> Screen effects tag
tag @a[tag=boba_z] add n_nextbot




#> ------------------ squewe | id 48

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=squewe_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 48
execute at @e[type=minecraft:zombie,tag=squewe_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=squewe_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=48}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=48},tag=nextbot_timeout] run function nnb_possessions:48/squewe_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=48},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=48},tag=!nextbot_timeout] add squewe_z
execute at @a[tag=squewe_z] run tp @e[tag=squewe] ~ ~2 ~

#> Screen effects tag
tag @a[tag=squewe_z] add n_nextbot




#> ------------------ ccat | id 49

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=ccat_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 49
execute at @e[type=minecraft:zombie,tag=ccat_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=ccat_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=49}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=49},tag=nextbot_timeout] run function nnb_possessions:49/ccat_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=49},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=49},tag=!nextbot_timeout] add ccat_z
execute at @a[tag=ccat_z] run tp @e[tag=ccat] ~ ~2 ~

#> Screen effects tag
tag @a[tag=ccat_z] add n_nextbot




#> ------------------ andy | id 50

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=andy_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 50
execute at @e[type=minecraft:zombie,tag=andy_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=andy_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=50}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=50},tag=nextbot_timeout] run function nnb_possessions:50/andy_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=50},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=50},tag=!nextbot_timeout] add andy_z
execute at @a[tag=andy_z] run tp @e[tag=andy] ~ ~2 ~

#> Screen effects tag
tag @a[tag=andy_z] add n_nextbot




#> ------------------ inhabitant | id 51

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=inhabitant_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 51
execute at @e[type=minecraft:zombie,tag=inhabitant_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=inhabitant_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=51}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=51},tag=nextbot_timeout] run function nnb_possessions:51/inhabitant_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=51},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=51},tag=!nextbot_timeout] add inhabitant_z
execute at @a[tag=inhabitant_z] run tp @e[tag=inhabitant] ~ ~2 ~

#> Screen effects tag
tag @a[tag=inhabitant_z] add n_nextbot




#> ------------------ leoret | id 52

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=leoret_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 52
execute at @e[type=minecraft:zombie,tag=leoret_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=leoret_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=52}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=52},tag=nextbot_timeout] run function nnb_possessions:52/leoret_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=52},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=52},tag=!nextbot_timeout] add leoret_z
execute at @a[tag=leoret_z] run tp @e[tag=leoret] ~ ~2 ~

#> Screen effects tag
tag @a[tag=leoret_z] add n_nextbot




#> ------------------ dread | id 53

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=dread_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 53
execute at @e[type=minecraft:zombie,tag=dread_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=dread_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=53}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=53},tag=nextbot_timeout] run function nnb_possessions:53/dread_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=53},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=53},tag=!nextbot_timeout] add dread_z
execute at @a[tag=dread_z] run tp @e[tag=dread] ~ ~2 ~

#> Screen effects tag
tag @a[tag=dread_z] add n_nextbot




#> ------------------ catnap | id 54

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=catnap_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 54
execute at @e[type=minecraft:zombie,tag=catnap_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=catnap_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=54}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=54},tag=nextbot_timeout] run function nnb_possessions:54/catnap_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=54},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=54},tag=!nextbot_timeout] add catnap_z
execute at @a[tag=catnap_z] run tp @e[tag=catnap] ~ ~2 ~

#> Screen effects tag
tag @a[tag=catnap_z] add b_nextbot




#> ------------------ mrl | id 55

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=mrl_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 55
execute at @e[type=minecraft:zombie,tag=mrl_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=mrl_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=55}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=55},tag=nextbot_timeout] run function nnb_possessions:55/mrl_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=55},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=55},tag=!nextbot_timeout] add mrl_z
execute at @a[tag=mrl_z] run tp @e[tag=mrl] ~ ~2 ~

#> Screen effects tag
tag @a[tag=mrl_z] add b_nextbot




#> ------------------ trespasser | id 56

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=trespasser_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 56
execute at @e[type=minecraft:zombie,tag=trespasser_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=trespasser_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=56}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=56},tag=nextbot_timeout] run function nnb_possessions:56/trespasser_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=56},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=56},tag=!nextbot_timeout] add trespasser_z
execute at @a[tag=trespasser_z] run tp @e[tag=trespasser] ~ ~2 ~

#> Screen effects tag
tag @a[tag=trespasser_z] add n_nextbot




#> ------------------ anim8or | id 57

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=anim8or_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 57
execute at @e[type=minecraft:zombie,tag=anim8or_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=anim8or_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=57}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=57},tag=nextbot_timeout] run function nnb_possessions:57/anim8or_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=57},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=57},tag=!nextbot_timeout] add anim8or_z
execute at @a[tag=anim8or_z] run tp @e[tag=anim8or] ~ ~2 ~

#> Screen effects tag
tag @a[tag=anim8or_z] add n_nextbot




#> ------------------ pool_noodle | id 58

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=pool_noodle_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 58
execute at @e[type=minecraft:zombie,tag=pool_noodle_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=pool_noodle_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=58}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=58},tag=nextbot_timeout] run function nnb_possessions:58/pool_noodle_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=58},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=58},tag=!nextbot_timeout] add pool_noodle_z
execute at @a[tag=pool_noodle_z] run tp @e[tag=pool_noodle] ~ ~2 ~

#> Screen effects tag
tag @a[tag=pool_noodle_z] add n_nextbot




#> ------------------ accurex | id 59

#> Detect and assign possession
execute at @e[type=minecraft:zombie,tag=accurex_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot,limit=1] run scoreboard players set @p nn_possesion 59
execute at @e[type=minecraft:zombie,tag=accurex_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled
execute at @e[type=minecraft:zombie,tag=accurex_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]
execute at @a[scores={nn_possesion=59}] run tag @p add nextbot

#> Reset on timeout
execute if entity @a[scores={nn_possesion=59},tag=nextbot_timeout] run function nnb_possessions:59/accurex_end

#> Teleport sprite and assign tags
execute if entity @a[scores={nn_possesion=59},tag=!nextbot_timeout] run tag @a[scores={nn_possesion=59},tag=!nextbot_timeout] add accurex_z
execute at @a[tag=accurex_z] run tp @e[tag=accurex] ~ ~2 ~

#> Screen effects tag
tag @a[tag=accurex_z] add n_nextbot