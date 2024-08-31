execute at @a[tag=jumpscared] run function nnb_jumpscares:removetags
execute at @a[tag=jumpscared,gamemode=!spectator] run function nnb_jumpscares:end_deathscreen



schedule function nnb_jumpscares:fix_stuff 5s