#> Player tag managment per bot

# Basically im planning to make something like that
#> Player will be tagged when close to a nextbot with for example metalpipe_d
#> - Separate texturepack with jumpscares sprites will be added (less messy!) - 
#> Player will be alive 2/3 seconds while playing the jumpscare
#> After that the tag will be removed and the player will be killed

# In short maybe it wont be like in possession datapack and maybe i will somehow create universal script for that stuff
# Time will tell!


#> Tick the main function with all of the diffrent titles + bypass chase effects
function nnb_jumpscares:titles
tag @a[scores={nn_jumpscare=3..}] add jumpscared
scoreboard players set @a[scores={nn_jumpscare=3..}] nn_jumpscare 0


#> Check the score and kill the player if the jumpscare played
execute as @a[scores={nn_jumpscare_run=40..}] run kill @s
execute as @a[scores={nn_jumpscare_run=40..}] run function nnb_jumpscares:removetags
execute as @a[scores={nn_jumpscare_run=40..}] run scoreboard players set @s nn_jumpscare 0
execute as @a[scores={nn_jumpscare_run=40..}] run scoreboard players set @s nn_jumpscare_run 0

#> Example for metal pipe
# Each nextbot will have its own scoreboard command - in that way i will have more freedom to make each bot more fun
# by customizing stuff
scoreboard players add @a[tag=pbj_d] nn_jumpscare 1

scoreboard players add @a[tag=shroom_d] nn_jumpscare 1

scoreboard players add @a[tag=carter_d] nn_jumpscare 1

scoreboard players add @a[tag=osc_d] nn_jumpscare 1

scoreboard players add @a[tag=toob_d] nn_jumpscare 1

scoreboard players add @a[tag=nothing_d] nn_jumpscare 1

scoreboard players add @a[tag=nuke_d] nn_jumpscare 1

scoreboard players add @a[tag=amogus_d] nn_jumpscare 1

scoreboard players add @a[tag=flash_d] nn_jumpscare 1

scoreboard players add @a[tag=winrar_d] nn_jumpscare 1

scoreboard players add @a[tag=smile_ghost_d] nn_jumpscare 1

scoreboard players add @a[tag=ohl_d] nn_jumpscare 1

scoreboard players add @a[tag=idiot_d] nn_jumpscare 1

scoreboard players add @a[tag=crying_sans_d] nn_jumpscare 1

scoreboard players add @a[tag=metal_pipe_d] nn_jumpscare 1

scoreboard players add @a[tag=meem_d] nn_jumpscare 1

scoreboard players add @a[tag=darkness_d] nn_jumpscare 1

scoreboard players add @a[tag=jet_d] nn_jumpscare 1

scoreboard players add @a[tag=intruder_d] nn_jumpscare 1

scoreboard players add @a[tag=bear_d] nn_jumpscare 1

scoreboard players add @a[tag=grumbo_d] nn_jumpscare 1

scoreboard players add @a[tag=giggle_d] nn_jumpscare 1

scoreboard players add @a[tag=rei_d] nn_jumpscare 1

scoreboard players add @a[tag=leorio_d] nn_jumpscare 1

scoreboard players add @a[tag=mohu_d] nn_jumpscare 1

scoreboard players add @a[tag=jack_d] nn_jumpscare 1

scoreboard players add @a[tag=unfortunate_d] nn_jumpscare 1

scoreboard players add @a[tag=nope_d] nn_jumpscare 1

scoreboard players add @a[tag=noob_d] nn_jumpscare 1

scoreboard players add @a[tag=observer_d] nn_jumpscare 1

scoreboard players add @a[tag=benny_d] nn_jumpscare 1

scoreboard players add @a[tag=racoon_d] nn_jumpscare 1

scoreboard players add @a[tag=fazmug_d] nn_jumpscare 1

scoreboard players add @a[tag=donot_d] nn_jumpscare 1

scoreboard players add @a[tag=bear5_d] nn_jumpscare 1

scoreboard players add @a[tag=fan_d] nn_jumpscare 1

scoreboard players add @a[tag=smurf_cat_d] nn_jumpscare 1

scoreboard players add @a[tag=blabber_d] nn_jumpscare 1

scoreboard players add @a[tag=chilly_d] nn_jumpscare 1

scoreboard players add @a[tag=little_gerry_d] nn_jumpscare 1

scoreboard players add @a[tag=subspace_tripmine_d] nn_jumpscare 1

scoreboard players add @a[tag=boykisser_d] nn_jumpscare 1

scoreboard players add @a[tag=boba_d] nn_jumpscare 1

scoreboard players add @a[tag=squewe_d] nn_jumpscare 1

scoreboard players add @a[tag=ccat_d] nn_jumpscare 1

scoreboard players add @a[tag=smiler_d] nn_jumpscare 1

scoreboard players add @a[tag=inhabitant_d] nn_jumpscare 1

scoreboard players add @a[tag=leoret_d] nn_jumpscare 1

scoreboard players add @a[tag=dread_d] nn_jumpscare 1

scoreboard players add @a[tag=andy_d] nn_jumpscare 1

scoreboard players add @a[tag=catnap_d] nn_jumpscare 1

# Remember to add it to templates too!