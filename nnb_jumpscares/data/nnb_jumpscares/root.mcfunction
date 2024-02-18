#> Player tag managment per bot

# Basically im planning to make something like that
#> Player will be tagged when close to a nextbot with for example metalpipe_d
#> - Separate texturepack with jumpscares sprites will be added (less messy!) - 
#> Player will be alive 2/3 seconds while playing the jumpscare
#> After that the tag will be removed and the player will be killed

# In short maybe it wont be like in possession datapack and maybe i will somehow create universal script for that stuff
# Time will tell!


#> Tick the main function with all of the diffrent titles
function nnb_jumpscares:titles


#> Check the score and kill the player if the jumpscare played
execute as @a[scores={nn_jumpscare_run=40..}] run kill @s
execute as @a[scores={nn_jumpscare_run=40..}] run function nnb_jumpscares:removetags
execute as @a[scores={nn_jumpscare_run=40..}] run scoreboard players set @s nn_jumpscare_run 0

#> Example for metal pipe
# Each nextbot will have its own scoreboard command - in that way i will have more freedom to make each bot more fun
# by customizing stuff
scoreboard players add @a[tag=metalpipe_d] nn_jumpscare 1
scoreboard players set @a[scores={nn_jumpscare=4..}] nn_jumpscare 1